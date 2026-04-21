extends Node

const DIALOGUE_DIRECTORY := "res://data/dialogue"

var dialogue_trees: Dictionary = {}

var _active_npc_id := ""
var _active_tree: Array = []
var _current_node_index := -1
var _active := false

func _ready() -> void:
	_load_dialogue_trees()

func start_dialogue(npc_id: String) -> void:
	if npc_id == "":
		return
	if dialogue_trees.is_empty():
		_load_dialogue_trees()
	if not dialogue_trees.has(npc_id):
		push_warning("DialogueManager: no dialogue tree found for npc_id '%s'." % npc_id)
		return

	if _active:
		_end_dialogue()

	_active_npc_id = npc_id
	_active_tree = dialogue_trees[npc_id]
	_current_node_index = _find_next_visible_node(0)
	if _current_node_index == -1:
		_clear_state()
		return

	_active = true
	SignalBus.dialogue_started.emit(_active_npc_id)

func advance() -> void:
	if not _active:
		return

	var current_node := get_current_node()
	if current_node.is_empty():
		_end_dialogue()
		return

	_apply_node_effects(current_node)

	var next_index := int(current_node.get("next", -1))
	if next_index < 0:
		_end_dialogue()
		return

	_current_node_index = _find_next_visible_node(next_index)
	if _current_node_index == -1:
		_end_dialogue()

func get_current_node() -> Dictionary:
	if not _active:
		return {}
	if _current_node_index < 0 or _current_node_index >= _active_tree.size():
		return {}
	return (_active_tree[_current_node_index] as Dictionary).duplicate(true)

func is_active() -> bool:
	return _active

func _load_dialogue_trees() -> void:
	dialogue_trees.clear()
	var directory := DirAccess.open(DIALOGUE_DIRECTORY)
	if directory == null:
		push_warning("DialogueManager: unable to open dialogue directory '%s'." % DIALOGUE_DIRECTORY)
		return

	for file_name in directory.get_files():
		if not file_name.ends_with(".json"):
			continue

		var dialogue_id := file_name.get_basename()
		var nodes := _load_dialogue_tree("%s/%s" % [DIALOGUE_DIRECTORY, file_name])
		if not nodes.is_empty():
			dialogue_trees[dialogue_id] = nodes

func _load_dialogue_tree(resource_path: String) -> Array:
	var file := FileAccess.open(resource_path, FileAccess.READ)
	if file == null:
		push_warning("DialogueManager: unable to open dialogue file '%s'." % resource_path)
		return []

	var json := JSON.new()
	if json.parse(file.get_as_text()) != OK:
		push_warning("DialogueManager: malformed dialogue JSON in '%s'." % resource_path)
		return []

	if not (json.data is Dictionary):
		push_warning("DialogueManager: dialogue file '%s' must contain a dictionary root." % resource_path)
		return []

	var root: Dictionary = json.data
	var nodes: Variant = root.get("nodes", [])
	if not (nodes is Array):
		push_warning("DialogueManager: dialogue file '%s' is missing a nodes array." % resource_path)
		return []

	var validated_nodes: Array = []
	for node_value in nodes:
		if not (node_value is Dictionary):
			push_warning("DialogueManager: dialogue file '%s' contains a non-dictionary node." % resource_path)
			return []

		var node: Dictionary = (node_value as Dictionary).duplicate(true)
		node["speaker"] = str(node.get("speaker", ""))
		node["text"] = str(node.get("text", ""))
		node["portrait_id"] = str(node.get("portrait_id", ""))
		node["portrait"] = str(node.get("portrait", ""))
		node["next"] = int(node.get("next", -1))
		node["fallback"] = int(node.get("fallback", -1))
		node["conditions"] = _normalize_dictionary_array(node.get("conditions", []))
		node["set_flags"] = _normalize_dictionary_array(node.get("set_flags", []))
		validated_nodes.append(node)

	return validated_nodes

func _normalize_dictionary_array(value: Variant) -> Array:
	if not (value is Array):
		return []

	var normalized: Array = []
	for entry in value:
		if entry is Dictionary:
			normalized.append((entry as Dictionary).duplicate(true))
	return normalized

func _find_next_visible_node(start_index: int) -> int:
	if start_index < 0:
		return -1

	var index := start_index
	var visited: Dictionary = {}
	while index >= 0 and index < _active_tree.size():
		if visited.has(index):
			push_warning("DialogueManager: circular dialogue fallback detected for '%s'." % _active_npc_id)
			return -1
		visited[index] = true

		var node: Dictionary = _active_tree[index]
		if _node_conditions_pass(node):
			return index
		index = int(node.get("fallback", -1))

	return -1

func _node_conditions_pass(node: Dictionary) -> bool:
	var conditions: Array = node.get("conditions", [])
	if conditions.is_empty():
		return true

	for condition_value in conditions:
		if not (condition_value is Dictionary):
			return false
		if not _condition_passes(condition_value):
			return false

	return true

func _condition_passes(condition: Dictionary) -> bool:
	var condition_type := str(condition.get("type", ""))
	match condition_type:
		"stat_gte":
			var stat_path := str(condition.get("stat", ""))
			if stat_path == "":
				return false
			return StatRegistry.get_stat(stat_path) >= float(condition.get("value", 0.0))
		"gold_gte":
			return PlayerData.gold >= int(condition.get("value", 0))
		"flag_set":
			var flag_name := str(condition.get("flag", ""))
			if flag_name == "":
				return false
			var is_set := bool(PlayerData.get_flag(flag_name, false))
			if bool(condition.get("negate", false)):
				return not is_set
			return is_set
		"pure_path":
			return PlayerData.is_pure()
		"mixed_path":
			return PlayerData.is_mixed()
		_:
			push_warning("DialogueManager: unknown condition type '%s'." % condition_type)
			return false

func _apply_node_effects(node: Dictionary) -> void:
	var flags_to_set: Array = node.get("set_flags", [])
	for value in flags_to_set:
		if not (value is Dictionary):
			continue
		var flag_name := str(value.get("flag", ""))
		if flag_name == "":
			continue
		PlayerData.set_flag(flag_name, value.get("value", true))

func _end_dialogue() -> void:
	if not _active:
		_clear_state()
		return

	var finished_npc_id := _active_npc_id
	_clear_state()
	SignalBus.dialogue_ended.emit(finished_npc_id)

func _clear_state() -> void:
	_active = false
	_active_npc_id = ""
	_active_tree = []
	_current_node_index = -1
