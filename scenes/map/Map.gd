extends Node2D

const MOVE_SPEED := 180.0
const STEP_DISTANCE := 24.0
const PLAYER_HALF_EXTENTS := Vector2(10.0, 10.0)
const PURE_PATH_TINT := Color(0.78, 0.88, 1.0, 1.0)
const MIXED_PATH_TINT := Color(1.0, 0.84, 0.68, 1.0)

const FRONTIER_REGION := "frontier_village"
const TOWN_LOCATION := "starting_town"
const MINE_REGION := "kobold_mine"
const MINE_LOCATION := "mine_entry_chamber"
const MINE_MID_LOCATION := "mine_mid"
const MINE_BOSS_READY_LOCATION := "mine_boss_ready"
const MINE_POST_BOSS_LOCATION := "mine_post_boss"
const MINE_EXIT_LOCATION := "mine_exit_gate"
const CROSSROADS_REGION := "crossroads_region"
const CROSSROADS_LOCATION := "crossroads_start"

const TOWN_HINT_TEXT := "Frontier Hamlet\nMove: WASD / Arrows\nH: HUD   E: Interact"
const MINE_HINT_TEXT := "Kobold Mine\nMove: WASD / Arrows\nH: HUD"
const CROSSROADS_HINT_TEXT := "Crossroads\nMove: WASD / Arrows\nE: Interact"

const TOWN_EXIT_PROMPT_ID := "town_exit"
const TOWN_EXIT_PROMPT_TITLE := "Leave for the Mine?"
const TOWN_EXIT_PROMPT_CONFIRM_TEXT := "Continue"
const TOWN_EXIT_PROMPT_CANCEL_TEXT := "Stay"
const TOWN_EXIT_PROMPT_TEXT := "You prepare to leave for the mine. There is no turning back. Continue?"

const CUTSCENE_ID_MINE_ENTRY := "mine_entry"
const CUTSCENE_ID_SHAMAN_INTRO := "shaman_intro"
const CUTSCENE_ID_MINE_EXIT := "mine_exit"

const MINE_COMMIT_FLAG := "mine_entry_commit_applied"
const MINE_ENCOUNTER_PROGRESS_FLAG := "mine_encounter_progress"
const MINE_BOSS_READY_FLAG := "mine_boss_ready"
const MINE_BOSS_RESOLVED_FLAG := "mine_boss_resolved"
const MINE_EXIT_UNLOCKED_FLAG := "mine_exit_unlocked"
const MINE_CLEARED_FLAG := "mine_cleared"
const MAIN_QUEST_PATH_OPEN_FLAG := "main_quest_path_open"
const SHAMAN_RECRUITED_FLAG := "shaman_recruited"
const SHAMAN_KILLED_FLAG := "shaman_killed"

const MINE_REGULAR_ENCOUNTER_COUNT := 3
const BATTLE_KIND_STANDARD := "standard"
const MINE_BATTLE_ENVIRONMENT := "mine"
const SUPPRESSED_TRIGGER_ENCOUNTER := "encounter"
const SUPPRESSED_TRIGGER_BOSS := "boss"

const MINE_BOSS_LOCKED_TEXT := "The top shaft ward still holds. Clear the remaining encounter rooms before facing the shaman."
const MINE_EXIT_LOCKED_TEXT := "The exit gate remains sealed. Resolve the shaman chamber first."
const MINE_ENCOUNTER_LABELS: PackedStringArray = [
	"Collapsed Hall",
	"Western Den",
	"Eastern Den",
]
const MINE_ENCOUNTER_LOCKED_TEXTS: PackedStringArray = [
	"",
	"The next route is still blocked. Clear the Collapsed Hall first.",
	"The upper route is not safe yet. Clear the Western Den first.",
]

const SHAMAN_FOLLOWER_SCENE: PackedScene = preload("res://scenes/npc/ShamanFollower.tscn")

@export var region_id := FRONTIER_REGION
@export var default_location_id := TOWN_LOCATION
@export_multiline var base_hint_text := TOWN_HINT_TEXT
@export var music_cue := AudioManager.CUE_TOWN
@export var mine_map := false
@export var town_exit_available := false

var _distance_since_step := 0.0
var _incoming_state_payload: Dictionary = {}
var _suppressed_trigger_type := ""
var _suppressed_trigger_index := -1
var _state_transition_locked := false
var _player_facing := "down"
var _mine_status_text := ""
var _town_exit_trigger_armed := false
var _shaman_follower: Node2D

var _town_exit_trigger: Area2D
var _mine_exit_trigger: Area2D
var _mine_boss_trigger: Area2D
var _encounter_triggers: Array[Area2D] = []

@onready var player: CharacterBody2D = $Player
@onready var player_sprite: AnimatedSprite2D = $Player/PlayerSprite
@onready var map_camera: Camera2D = $Player/MapCamera
@onready var map_ui: CanvasLayer = $UI
@onready var hint_backdrop: ColorRect = $UI/HintBackdrop
@onready var hint_label: Label = $UI/HintLabel
@onready var spawns_root: Node = get_node_or_null("Spawns")
@onready var bounds_root: Node = get_node_or_null("Bounds")
@onready var legacy_player_spawn: Marker2D = get_node_or_null("PlayerSpawn") as Marker2D
@onready var legacy_mine_spawn: Marker2D = get_node_or_null("MineSpawn") as Marker2D
@onready var ground_map: TileMap = get_node_or_null("GroundMap") as TileMap

func _ready() -> void:
	_incoming_state_payload = SceneManager.consume_state_payload()
	_resolve_optional_nodes()
	if region_id == FRONTIER_REGION and _town_exit_trigger != null:
		town_exit_available = true
	_connect_overlay_signals()
	_connect_trigger_signals()
	_apply_location_context()
	_apply_actor_visuals()
	_restore_mine_progress_state()
	_update_hint()
	map_camera.make_current()
	_configure_map_camera()
	_play_region_music()

	if not get_viewport().size_changed.is_connected(_on_viewport_size_changed):
		get_viewport().size_changed.connect(_on_viewport_size_changed)

	if town_exit_available and is_instance_valid(_town_exit_trigger):
		_town_exit_trigger.monitoring = false
		call_deferred("_arm_town_exit_trigger")

	_apply_incoming_state_payload()

func _resolve_optional_nodes() -> void:
	_town_exit_trigger = _get_area_node(["Triggers/TownExitTrigger", "TownExitTrigger"])
	_mine_exit_trigger = _get_area_node(["Triggers/MineExitTrigger"])
	_mine_boss_trigger = _get_area_node(["Triggers/MineBossTrigger"])
	_encounter_triggers.clear()
	for trigger_name in ["EncounterTrigger1", "EncounterTrigger2", "EncounterTrigger3"]:
		var trigger := _get_area_node(["Triggers/%s" % trigger_name])
		if trigger != null:
			_encounter_triggers.append(trigger)

func _connect_overlay_signals() -> void:
	var prompt_modal = _get_prompt_modal()
	if prompt_modal != null:
		if not prompt_modal.confirmed.is_connected(_on_prompt_modal_confirmed):
			prompt_modal.confirmed.connect(_on_prompt_modal_confirmed)
		if not prompt_modal.canceled.is_connected(_on_prompt_modal_canceled):
			prompt_modal.canceled.connect(_on_prompt_modal_canceled)
		if not prompt_modal.opened.is_connected(_update_map_overlay_visibility):
			prompt_modal.opened.connect(_update_map_overlay_visibility)
		if not prompt_modal.closed.is_connected(_update_map_overlay_visibility):
			prompt_modal.closed.connect(_update_map_overlay_visibility)

	if not SignalBus.dialogue_started.is_connected(_on_dialogue_visibility_changed):
		SignalBus.dialogue_started.connect(_on_dialogue_visibility_changed)
	if not SignalBus.dialogue_ended.is_connected(_on_dialogue_visibility_changed):
		SignalBus.dialogue_ended.connect(_on_dialogue_visibility_changed)

func _connect_trigger_signals() -> void:
	if _town_exit_trigger != null and not _town_exit_trigger.body_entered.is_connected(_on_town_exit_trigger_body_entered):
		_town_exit_trigger.body_entered.connect(_on_town_exit_trigger_body_entered)

	if _mine_exit_trigger != null and not _mine_exit_trigger.body_entered.is_connected(_on_mine_exit_trigger_body_entered):
		_mine_exit_trigger.body_entered.connect(_on_mine_exit_trigger_body_entered)

	if _mine_boss_trigger != null:
		if not _mine_boss_trigger.body_entered.is_connected(_on_mine_boss_trigger_body_entered):
			_mine_boss_trigger.body_entered.connect(_on_mine_boss_trigger_body_entered)
		if not _mine_boss_trigger.body_exited.is_connected(_on_mine_boss_trigger_body_exited):
			_mine_boss_trigger.body_exited.connect(_on_mine_boss_trigger_body_exited)

	for encounter_index in range(_encounter_triggers.size()):
		var trigger := _encounter_triggers[encounter_index]
		if not trigger.body_entered.is_connected(_on_mine_encounter_trigger_body_entered.bind(encounter_index)):
			trigger.body_entered.connect(_on_mine_encounter_trigger_body_entered.bind(encounter_index))
		if not trigger.body_exited.is_connected(_on_mine_encounter_trigger_body_exited.bind(encounter_index)):
			trigger.body_exited.connect(_on_mine_encounter_trigger_body_exited.bind(encounter_index))

func _apply_location_context() -> void:
	var target_location := str(_incoming_state_payload.get("return_location", PlayerData.current_location))
	if region_id != str(_incoming_state_payload.get("return_region", region_id)):
		target_location = default_location_id

	PlayerData.current_region = region_id
	if not _has_spawn_marker(target_location):
		target_location = default_location_id
	PlayerData.current_location = target_location

	player.velocity = Vector2.ZERO
	player.global_position = _resolve_spawn_position(target_location, _default_spawn_position())
	_update_player_map_animation(Vector2.ZERO)

func _apply_incoming_state_payload() -> void:
	if _incoming_state_payload.is_empty():
		_update_map_overlay_visibility()
		return

	player.velocity = Vector2.ZERO
	_suppressed_trigger_type = str(_incoming_state_payload.get("suppressed_trigger_type", ""))
	_suppressed_trigger_index = int(_incoming_state_payload.get("suppressed_trigger_index", -1))

	if mine_map:
		var status_text := str(_incoming_state_payload.get("status_text", ""))
		if status_text != "":
			_mine_status_text = status_text
			_update_hint()

	var open_hud_tab := str(_incoming_state_payload.get("open_hud_tab", ""))
	if open_hud_tab != "":
		call_deferred("_open_hud_from_payload", open_hud_tab)

	if bool(_incoming_state_payload.get("fade_from_black", false)):
		call_deferred("_play_fade_from_black")

	_update_map_overlay_visibility()

func _default_spawn_position() -> Vector2:
	if _has_spawn_marker(default_location_id):
		return _spawn_marker_position(default_location_id)
	if legacy_player_spawn != null:
		return legacy_player_spawn.global_position
	if legacy_mine_spawn != null:
		return legacy_mine_spawn.global_position
	return player.global_position

func _resolve_spawn_position(location: String, fallback_position: Vector2) -> Vector2:
	var return_position_value: Variant = _incoming_state_payload.get("return_position", Vector2.ZERO)
	if return_position_value is Vector2:
		var return_position: Vector2 = return_position_value
		if not return_position.is_zero_approx():
			return return_position
	return _spawn_marker_position(location) if _has_spawn_marker(location) else fallback_position

func _has_spawn_marker(location: String) -> bool:
	if spawns_root != null and spawns_root.get_node_or_null(location) is Marker2D:
		return true
	match location:
		TOWN_LOCATION:
			return legacy_player_spawn != null
		MINE_LOCATION:
			return legacy_mine_spawn != null
		_:
			return false

func _spawn_marker_position(location: String) -> Vector2:
	if spawns_root != null:
		var marker := spawns_root.get_node_or_null(location) as Marker2D
		if marker != null:
			return marker.global_position
	match location:
		TOWN_LOCATION:
			return legacy_player_spawn.global_position if legacy_player_spawn != null else player.global_position
		MINE_LOCATION:
			return legacy_mine_spawn.global_position if legacy_mine_spawn != null else player.global_position
		_:
			return player.global_position

func _play_fade_from_black() -> void:
	var screen_fader = SceneManager.get_screen_fader()
	if screen_fader == null:
		return
	screen_fader.force_black()
	screen_fader.fade_from_black(0.35)

func _configure_map_camera() -> void:
	var playable_bounds := _resolve_playable_bounds()
	map_camera.limit_left = int(playable_bounds.position.x)
	map_camera.limit_top = int(playable_bounds.position.y)
	map_camera.limit_right = int(playable_bounds.end.x)
	map_camera.limit_bottom = int(playable_bounds.end.y)

func _resolve_playable_bounds() -> Rect2:
	if bounds_root != null:
		var min_marker := bounds_root.get_node_or_null("Min") as Marker2D
		var max_marker := bounds_root.get_node_or_null("Max") as Marker2D
		if min_marker != null and max_marker != null:
			var top_left := Vector2(
				minf(min_marker.global_position.x, max_marker.global_position.x),
				minf(min_marker.global_position.y, max_marker.global_position.y)
			)
			var size := Vector2(
				absf(max_marker.global_position.x - min_marker.global_position.x),
				absf(max_marker.global_position.y - min_marker.global_position.y)
			)
			return Rect2(top_left, size)

	if ground_map != null and ground_map.tile_set != null:
		var used_rect := ground_map.get_used_rect()
		var tile_size := Vector2(ground_map.tile_set.tile_size)
		return Rect2(Vector2(used_rect.position) * tile_size, Vector2(used_rect.size) * tile_size)

	return Rect2(Vector2.ZERO, Vector2(480.0, 270.0))

func _arm_town_exit_trigger() -> void:
	if _town_exit_trigger == null:
		return
	await get_tree().physics_frame
	await get_tree().physics_frame
	_town_exit_trigger.monitoring = true
	_town_exit_trigger_armed = true

func _update_hint() -> void:
	if not mine_map:
		hint_label.text = base_hint_text
		_layout_map_ui()
		return

	var objective := ""
	var progress := _mine_encounter_progress()
	if progress < MINE_REGULAR_ENCOUNTER_COUNT:
		objective = "Objective: Clear encounter %d/%d (%s)." % [
			progress + 1,
			MINE_REGULAR_ENCOUNTER_COUNT,
			MINE_ENCOUNTER_LABELS[progress],
		]
	elif not bool(PlayerData.get_flag(MINE_BOSS_RESOLVED_FLAG, false)):
		objective = "Objective: Enter the boss room."
	elif not bool(PlayerData.get_flag(MINE_CLEARED_FLAG, false)):
		objective = "Objective: Reach the mine exit."
	else:
		objective = "Objective: Travel on from the crossroads."

	var extra_lines: Array[String] = [objective]
	if _mine_status_text != "":
		extra_lines.append(_mine_status_text)
	hint_label.text = _compose_hint_text(base_hint_text, extra_lines)
	_layout_map_ui()

func _compose_hint_text(base_text: String, extra_lines: Array[String]) -> String:
	var lines := PackedStringArray([base_text])
	for line in extra_lines:
		if line != "":
			lines.append(line)
	return "\n".join(lines)

func _layout_map_ui() -> void:
	var viewport_size := get_viewport_rect().size
	var compact_layout := viewport_size.x <= 640.0 or viewport_size.y <= 360.0
	var margin := 4.0 if compact_layout else 8.0
	var panel_width := clampf(viewport_size.x * (0.55 if compact_layout else 0.42), 188.0, 288.0)
	var panel_height := 148.0 if mine_map else 104.0

	hint_backdrop.anchor_left = 1.0
	hint_backdrop.anchor_right = 1.0
	hint_backdrop.offset_left = -panel_width - margin
	hint_backdrop.offset_top = margin
	hint_backdrop.offset_right = -margin
	hint_backdrop.offset_bottom = margin + panel_height

	hint_label.anchor_left = 1.0
	hint_label.anchor_right = 1.0
	hint_label.offset_left = hint_backdrop.offset_left + 8.0
	hint_label.offset_top = hint_backdrop.offset_top + 8.0
	hint_label.offset_right = hint_backdrop.offset_right - 8.0
	hint_label.offset_bottom = hint_backdrop.offset_bottom - 8.0
	hint_label.autowrap_mode = TextServer.AUTOWRAP_WORD
	hint_label.vertical_alignment = VERTICAL_ALIGNMENT_TOP
	hint_label.add_theme_font_size_override("font_size", 8 if compact_layout else 9)
	_update_map_overlay_visibility()

func _play_region_music() -> void:
	AudioManager.play_music(music_cue)

func _update_map_overlay_visibility(_unused: Variant = null) -> void:
	var show_hint := not _is_hud_open() and not DialogueManager.is_active() and not _is_prompt_open()
	hint_backdrop.visible = show_hint
	hint_label.visible = show_hint

func _unhandled_input(event: InputEvent) -> void:
	if _is_prompt_open():
		return

	if event.is_action_pressed("toggle_hud"):
		get_viewport().set_input_as_handled()
		_toggle_hud()
		return

	if _is_hud_open():
		return

func _physics_process(_delta: float) -> void:
	if _is_hud_open() or DialogueManager.is_active() or _is_prompt_open():
		player.velocity = Vector2.ZERO
		_update_player_map_animation(Vector2.ZERO)
		return

	var input_vector := Input.get_vector("move_left", "move_right", "move_up", "move_down")
	player.velocity = input_vector.normalized() * MOVE_SPEED if not input_vector.is_zero_approx() else Vector2.ZERO

	var previous_position := player.global_position
	player.move_and_slide()
	_clamp_player_to_map()
	_update_player_map_animation(player.velocity)

	var travelled := player.global_position - previous_position
	if travelled.is_zero_approx():
		return

	_distance_since_step += travelled.length()
	while _distance_since_step >= STEP_DISTANCE:
		_distance_since_step -= STEP_DISTANCE
		var step_sfx := AudioManager.SFX_STEP_MINE if mine_map else AudioManager.SFX_STEP_TOWN
		var pitch_step := 0.96 + float(Time.get_ticks_msec() % 6) * 0.015
		AudioManager.play_sfx(step_sfx, -13.0, pitch_step)
		SignalBus.action_performed.emit({"type": "walk"})

func _clamp_player_to_map() -> void:
	var playable_bounds := _resolve_playable_bounds()
	var clamped_position := Vector2(
		clampf(player.global_position.x, playable_bounds.position.x + PLAYER_HALF_EXTENTS.x, playable_bounds.end.x - PLAYER_HALF_EXTENTS.x),
		clampf(player.global_position.y, playable_bounds.position.y + PLAYER_HALF_EXTENTS.y, playable_bounds.end.y - PLAYER_HALF_EXTENTS.y)
	)
	if clamped_position != player.global_position:
		player.global_position = clamped_position

func _apply_actor_visuals() -> void:
	_apply_player_map_sprite()
	_apply_npc_sprites()
	_sync_shaman_follower()

func _apply_player_map_sprite() -> void:
	if not is_instance_valid(player_sprite):
		return

	var player_actor_id := ActorVisuals.resolve_player_actor_id()
	var sprite_frames := ActorVisuals.get_map_frames(player_actor_id)
	if sprite_frames != null:
		player_sprite.sprite_frames = sprite_frames
	player_sprite.modulate = _player_path_tint()
	player_sprite.position = ActorVisuals.get_map_offset(player_actor_id)
	player_sprite.scale = ActorVisuals.get_map_scale(player_actor_id)
	_update_player_map_animation(Vector2.ZERO)

func _apply_npc_sprites() -> void:
	for node in find_children("*", "Node2D", true, false):
		if node == player:
			continue
		var actor_id := str(node.get("actor_id"))
		if actor_id == "":
			continue
		var sprite := node.get_node_or_null("Sprite") as Sprite2D
		if sprite == null:
			continue

		var texture := ActorVisuals.get_map_texture(actor_id)
		if texture != null:
			sprite.texture = texture
		sprite.modulate = ActorVisuals.get_map_modulate(actor_id)
		sprite.position = ActorVisuals.get_map_offset(actor_id)
		sprite.scale = ActorVisuals.get_map_scale(actor_id)

func _update_player_map_animation(movement_vector: Vector2) -> void:
	if not is_instance_valid(player_sprite) or player_sprite.sprite_frames == null:
		return

	if not movement_vector.is_zero_approx():
		_player_facing = _direction_from_vector(movement_vector)

	var animation_name := "walk_%s" % _player_facing if not movement_vector.is_zero_approx() else "idle_%s" % _player_facing
	if player_sprite.animation != animation_name:
		player_sprite.play(animation_name)
	elif not player_sprite.is_playing():
		player_sprite.play()

func _direction_from_vector(movement_vector: Vector2) -> String:
	if absf(movement_vector.x) > absf(movement_vector.y):
		return "right" if movement_vector.x > 0.0 else "left"
	if movement_vector.y < 0.0:
		return "up"
	return "down"

func _player_path_tint() -> Color:
	return MIXED_PATH_TINT if PlayerData.is_mixed() else PURE_PATH_TINT

func _should_show_shaman_follower() -> bool:
	if not bool(PlayerData.get_flag(SHAMAN_RECRUITED_FLAG, false)):
		return false
	if bool(PlayerData.get_flag(SHAMAN_KILLED_FLAG, false)):
		return false
	if not bool(PlayerData.get_flag(MINE_EXIT_UNLOCKED_FLAG, false)):
		return false

	if region_id == MINE_REGION:
		return not bool(PlayerData.get_flag(MINE_CLEARED_FLAG, false))
	if region_id == CROSSROADS_REGION:
		return bool(PlayerData.get_flag(MINE_CLEARED_FLAG, false))
	return false

func _sync_shaman_follower() -> void:
	if not _should_show_shaman_follower():
		if is_instance_valid(_shaman_follower):
			_shaman_follower.queue_free()
			_shaman_follower = null
		return

	if not is_instance_valid(_shaman_follower):
		_shaman_follower = SHAMAN_FOLLOWER_SCENE.instantiate()
		_shaman_follower.name = "ShamanFollower"
		add_child(_shaman_follower)

	if _shaman_follower != null and _shaman_follower.has_method("configure"):
		_shaman_follower.configure(
			player,
			ActorVisuals.get_follower_frames(ActorVisuals.ACTOR_SHAMAN),
			ActorVisuals.get_follower_modulate(ActorVisuals.ACTOR_SHAMAN),
			ActorVisuals.get_follower_scale(ActorVisuals.ACTOR_SHAMAN)
		)
		_shaman_follower.global_position = player.global_position + Vector2(-20.0, 14.0)

func _mine_encounter_progress() -> int:
	return clampi(int(PlayerData.get_flag(MINE_ENCOUNTER_PROGRESS_FLAG, 0)), 0, MINE_REGULAR_ENCOUNTER_COUNT)

func _restore_mine_progress_state() -> void:
	if not mine_map:
		_sync_shaman_follower()
		return

	var progress := _mine_encounter_progress()
	if progress >= MINE_REGULAR_ENCOUNTER_COUNT:
		PlayerData.set_flag(MINE_BOSS_READY_FLAG, true)
	if bool(PlayerData.get_flag(MINE_BOSS_RESOLVED_FLAG, false)):
		PlayerData.set_flag(MINE_EXIT_UNLOCKED_FLAG, true)

	for encounter_index in range(_encounter_triggers.size()):
		var trigger := _encounter_triggers[encounter_index]
		trigger.monitoring = encounter_index >= progress

	if _mine_boss_trigger != null:
		_mine_boss_trigger.monitoring = not bool(PlayerData.get_flag(MINE_BOSS_RESOLVED_FLAG, false))

	_set_blocker_active("WestBranch", progress < 1)
	_set_blocker_active("EastBranch", progress < 2)
	_set_blocker_active("BossGate", progress < MINE_REGULAR_ENCOUNTER_COUNT)
	_set_blocker_active("ExitGate", not bool(PlayerData.get_flag(MINE_EXIT_UNLOCKED_FLAG, false)))
	_sync_shaman_follower()

func _set_blocker_active(blocker_name: String, active: bool) -> void:
	var collision := get_node_or_null("WorldCollision/ProgressionBlockers/%s" % blocker_name) as CollisionShape2D
	if collision != null:
		collision.disabled = not active
	var visual := get_node_or_null("Visuals/ProgressionBlockers/%s" % blocker_name) as CanvasItem
	if visual != null:
		visual.visible = active

func _locked_route_status_for_encounter(encounter_index: int) -> String:
	if encounter_index >= 0 and encounter_index < MINE_ENCOUNTER_LOCKED_TEXTS.size():
		return MINE_ENCOUNTER_LOCKED_TEXTS[encounter_index]
	return "That route is still blocked. Clear the earlier encounter rooms first."

func _on_mine_encounter_trigger_body_entered(body: Node, encounter_index: int) -> void:
	if body != player or _state_transition_locked:
		return
	if _suppressed_trigger_type == SUPPRESSED_TRIGGER_ENCOUNTER and _suppressed_trigger_index == encounter_index:
		return

	var progress := _mine_encounter_progress()
	if encounter_index < progress:
		return
	if encounter_index > progress:
		_set_mine_status(_locked_route_status_for_encounter(encounter_index))
		return

	_launch_battle(_build_battle_payload(BATTLE_KIND_STANDARD, encounter_index, SUPPRESSED_TRIGGER_ENCOUNTER))

func _on_mine_encounter_trigger_body_exited(body: Node, encounter_index: int) -> void:
	if body != player:
		return
	if _suppressed_trigger_type == SUPPRESSED_TRIGGER_ENCOUNTER and _suppressed_trigger_index == encounter_index:
		_clear_suppressed_trigger()

func _on_mine_boss_trigger_body_entered(body: Node) -> void:
	if body != player or _state_transition_locked:
		return
	if _suppressed_trigger_type == SUPPRESSED_TRIGGER_BOSS:
		return
	if not bool(PlayerData.get_flag(MINE_BOSS_READY_FLAG, false)):
		_set_mine_status(MINE_BOSS_LOCKED_TEXT)
		return
	if bool(PlayerData.get_flag(MINE_BOSS_RESOLVED_FLAG, false)):
		return

	player.velocity = Vector2.ZERO
	AudioManager.play_sfx(AudioManager.SFX_GATE_OPEN, -6.0)
	SceneManager.change_state("cutscene", {
		"cutscene_id": CUTSCENE_ID_SHAMAN_INTRO,
		"return_region": PlayerData.current_region,
		"return_location": PlayerData.current_location,
		"return_position": player.global_position,
		"suppressed_trigger_type": SUPPRESSED_TRIGGER_BOSS,
		"suppressed_trigger_index": 0,
	})

func _on_mine_boss_trigger_body_exited(body: Node) -> void:
	if body != player:
		return
	if _suppressed_trigger_type == SUPPRESSED_TRIGGER_BOSS:
		_clear_suppressed_trigger()

func _on_mine_exit_trigger_body_entered(body: Node) -> void:
	if body != player or _state_transition_locked or _is_prompt_open():
		return
	if not bool(PlayerData.get_flag(MINE_EXIT_UNLOCKED_FLAG, false)):
		_set_mine_status(MINE_EXIT_LOCKED_TEXT)
		return

	player.velocity = Vector2.ZERO
	AudioManager.play_sfx(AudioManager.SFX_GATE_OPEN, -6.0)
	_start_mine_exit_cutscene()

func _set_mine_status(status_text: String) -> void:
	_mine_status_text = status_text
	_update_hint()

func _clear_suppressed_trigger() -> void:
	_suppressed_trigger_type = ""
	_suppressed_trigger_index = -1

func _on_town_exit_trigger_body_entered(body: Node) -> void:
	if not _town_exit_trigger_armed or body != player or _is_prompt_open():
		return

	player.velocity = Vector2.ZERO
	_show_prompt_modal(
		TOWN_EXIT_PROMPT_ID,
		TOWN_EXIT_PROMPT_TITLE,
		TOWN_EXIT_PROMPT_TEXT,
		TOWN_EXIT_PROMPT_CONFIRM_TEXT,
		TOWN_EXIT_PROMPT_CANCEL_TEXT
	)

func _on_prompt_modal_confirmed(prompt_id: String) -> void:
	if prompt_id == TOWN_EXIT_PROMPT_ID:
		_on_town_exit_confirmed()

func _on_prompt_modal_canceled(prompt_id: String) -> void:
	if prompt_id == TOWN_EXIT_PROMPT_ID:
		player.velocity = Vector2.ZERO
		_update_map_overlay_visibility()

func _on_town_exit_confirmed() -> void:
	_apply_mine_commit_stats_once()
	AudioManager.play_sfx(AudioManager.SFX_GATE_OPEN, -6.0)
	SceneManager.change_state("cutscene", {
		"cutscene_id": CUTSCENE_ID_MINE_ENTRY,
	})

func _start_mine_exit_cutscene() -> void:
	_start_mine_exit_cutscene_async()

func _start_mine_exit_cutscene_async() -> void:
	if _state_transition_locked:
		return

	_state_transition_locked = true
	var screen_fader = SceneManager.get_screen_fader()
	if screen_fader != null:
		var fade_tween: Tween = screen_fader.fade_to_black(0.35)
		await fade_tween.finished

	if not SceneManager.change_state("cutscene", {
		"cutscene_id": CUTSCENE_ID_MINE_EXIT,
		"shaman_recruited": PlayerData.get_flag(SHAMAN_RECRUITED_FLAG, false),
		"return_region": CROSSROADS_REGION,
		"return_location": CROSSROADS_LOCATION,
		"return_position": Vector2.ZERO,
	}):
		_state_transition_locked = false
		if screen_fader != null:
			screen_fader.fade_from_black(0.35)

func _build_battle_payload(encounter_kind: String, encounter_index: int, suppressed_trigger_type: String) -> Dictionary:
	return {
		"encounter_kind": encounter_kind,
		"encounter_index": encounter_index,
		"return_region": PlayerData.current_region,
		"return_location": PlayerData.current_location,
		"return_position": player.global_position,
		"environment_id": MINE_BATTLE_ENVIRONMENT if mine_map else "town",
		"suppressed_trigger_type": suppressed_trigger_type,
		"suppressed_trigger_index": encounter_index,
		"fade_from_black": true,
	}

func _launch_battle(battle_payload: Dictionary) -> void:
	_launch_battle_async(battle_payload)

func _launch_battle_async(battle_payload: Dictionary) -> void:
	if _state_transition_locked:
		return

	_state_transition_locked = true
	player.velocity = Vector2.ZERO

	var screen_fader = SceneManager.get_screen_fader()
	if screen_fader != null:
		var fade_tween: Tween = screen_fader.fade_to_black(0.35)
		await fade_tween.finished

	if not SceneManager.change_state("battle", battle_payload):
		_state_transition_locked = false
		if screen_fader != null:
			screen_fader.fade_from_black(0.35)

func _apply_mine_commit_stats_once() -> void:
	if bool(PlayerData.get_flag(MINE_COMMIT_FLAG, false)):
		return

	StatRegistry._increment_stat("will.resolve", 1.0)
	StatRegistry._increment_stat("holy.faith", 1.0)
	PlayerData.set_flag(MINE_COMMIT_FLAG, true)

func _toggle_hud() -> void:
	var hud = _get_hud()
	if hud != null:
		hud.toggle()
	_update_map_overlay_visibility()

func _open_hud_from_payload(tab_id: String) -> void:
	var hud = _get_hud()
	if hud != null and hud.has_method("open_to_tab"):
		hud.open_to_tab(tab_id)
	_update_map_overlay_visibility()

func _get_hud():
	var overlay_host: CanvasLayer = SceneManager.get_overlay_host()
	if overlay_host == null:
		return null
	return overlay_host.get_node_or_null("HUD")

func _is_hud_open() -> bool:
	var hud = _get_hud()
	return hud != null and hud.is_open()

func _get_prompt_modal():
	var overlay_host: CanvasLayer = SceneManager.get_overlay_host()
	if overlay_host == null:
		return null
	return overlay_host.get_node_or_null("PromptModal")

func _show_prompt_modal(prompt_id: String, title: String, body: String, confirm_text: String, cancel_text: String) -> void:
	var prompt_modal = _get_prompt_modal()
	if prompt_modal != null:
		prompt_modal.show_prompt(prompt_id, title, body, confirm_text, cancel_text)

func _is_prompt_open() -> bool:
	var prompt_modal = _get_prompt_modal()
	return prompt_modal != null and prompt_modal.is_open()

func _on_dialogue_visibility_changed(_unused: Variant = null) -> void:
	_update_map_overlay_visibility()

func _on_viewport_size_changed() -> void:
	_layout_map_ui()

func _get_area_node(node_paths: Array[String]) -> Area2D:
	for node_path in node_paths:
		var node := get_node_or_null(node_path)
		if node is Area2D:
			return node as Area2D
	return null

func get_save_context() -> Dictionary:
	return {
		"region": PlayerData.current_region,
		"location": PlayerData.current_location,
		"position": player.global_position if is_instance_valid(player) else Vector2.ZERO,
		"suppressed_trigger_type": _suppressed_trigger_type,
		"suppressed_trigger_index": _suppressed_trigger_index,
	}
