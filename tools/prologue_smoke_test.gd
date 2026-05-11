extends Node

# Headless smoke test for the new prologue flow.
# Run with:
#   godot --headless --path . res://tools/prologue_smoke_test.tscn
#
# Expected path:
#   title -> prologue_player_select -> prologue_intro -> prologue_chapel ->
#   prologue_side_passage -> prologue_inciting -> battle ->
#   prologue_post_battle -> character_creation

const SUBFRAMES_PER_WAIT := 6

var _failure_count := 0
var _check_index := 0

func _ready() -> void:
	var main_scene := load("res://scenes/main/Main.tscn") as PackedScene
	if main_scene == null:
		_fail("Could not load Main.tscn")
		_quit_with_summary()
		return
	var main_instance := main_scene.instantiate()
	add_child(main_instance)

	for i in range(8):
		await get_tree().process_frame

	await _run_tests()
	_quit_with_summary()

func _run_tests() -> void:
	_log("--- Prologue smoke test starting ---")

	_assert(SceneManager.current_state_name == "title",
		"After boot, current_state_name == 'title' (got: %s)" % SceneManager.current_state_name)

	var started := SaveManager.start_new_game()
	_assert(started, "SaveManager.start_new_game() returned true")
	await _wait_frames(6)
	_assert(SceneManager.current_state_name == "prologue_player_select",
		"New Game enters player selector (got: %s)" % SceneManager.current_state_name)
	_assert(PlayerData.attendant_presentation == PlayerData.ATTENDANT_PRESENTATION_MALE,
		"Attendant presentation defaults to male before selector input")
	_assert(not SaveManager.has_save(),
		"No save file is created on New Game selector entry")
	_assert_scene_node("Center/Layout/ButtonRow/MaleButton", "Player selector has MaleButton")
	_assert_scene_node("Center/Layout/ButtonRow/FemaleButton", "Player selector has FemaleButton")

	var female_button := _current_scene_node("Center/Layout/ButtonRow/FemaleButton") as Button
	if female_button == null:
		_fail("Player selector FemaleButton missing for click")
	else:
		female_button.pressed.emit()
	await _await_state("prologue_intro", 120)
	_assert(PlayerData.attendant_presentation == PlayerData.ATTENDANT_PRESENTATION_FEMALE,
		"Female selector choice is recorded in PlayerData")
	_assert(not SaveManager.has_save(),
		"No save file is created after selector choice")

	_assert_scene_node("Background", "PrologueIntro has Background panel")
	_assert_scene_node("LineOne", "PrologueIntro has LineOne typewriter")
	_assert_scene_node("LineTwo", "PrologueIntro has LineTwo typewriter")
	_assert(_current_scene_node("PressHint") == null,
		"PrologueIntro has no PressHint node")
	var line_one := _current_scene_node("LineOne")
	var line_two := _current_scene_node("LineTwo")
	if line_one != null:
		_assert(line_one.get("skippable") == false, "LineOne typewriter is non-skippable")
	if line_two != null:
		_assert(line_two.get("skippable") == false, "LineTwo typewriter is non-skippable")
	await _await_state("prologue_chapel", 900)

	_assert_scene_node("Player", "PrologueChapel has Player")
	_assert_scene_node("Player/PlayerSprite", "PrologueChapel has PlayerSprite")
	_assert_scene_node("ExitTrigger", "PrologueChapel has ExitTrigger")
	_assert_scene_node("Bounds/Min", "PrologueChapel has Bounds/Min")
	_assert_scene_node("Bounds/Max", "PrologueChapel has Bounds/Max")
	_assert_scene_node("NorthDais", "PrologueChapel has chapel dais geometry")
	_assert_scene_node("AltarStone", "PrologueChapel has altar geometry")
	_assert_scene_node("LeftPewA", "PrologueChapel has pew geometry")
	_assert_scene_node("RightPewA", "PrologueChapel has mirrored pew geometry")
	_assert_scene_node("PewNpcA", "PrologueChapel has PewNpcA")
	_assert_scene_node("PewNpcB", "PrologueChapel has PewNpcB")
	_assert_scene_node("TempleAttendant", "PrologueChapel has TempleAttendant")
	_assert_player_not_stuck_in_wall(SceneManager.current_state_scene)
	_assert_player_sprite_has_frames(SceneManager.current_state_scene, "PrologueChapel")
	_assert_player_actor_is_attendant(SceneManager.current_state_scene, "PrologueChapel")
	_assert_player_clamped_to_bounds(SceneManager.current_state_scene, "PrologueChapel")
	_assert_npc_sprite_has_texture(SceneManager.current_state_scene, "PewNpcA", "PrologueChapel")
	_assert_npc_sprite_has_texture(SceneManager.current_state_scene, "PewNpcB", "PrologueChapel")
	_assert_npc_sprite_has_texture(SceneManager.current_state_scene, "TempleAttendant", "PrologueChapel")
	_assert_chapel_npcs_distinct(SceneManager.current_state_scene)

	await _verify_exit_trigger_fires("PrologueChapel", "prologue_side_passage")
	_assert(SceneManager.current_state_name == "prologue_side_passage",
		"After chapel exit, current_state_name == 'prologue_side_passage' (got: %s)" % SceneManager.current_state_name)
	_assert_scene_node("Player", "PrologueSidePassage has Player")
	_assert_scene_node("ExitTrigger", "PrologueSidePassage has ExitTrigger")
	_assert_scene_node("Steward", "PrologueSidePassage has Steward NPC")
	_assert_player_not_stuck_in_wall(SceneManager.current_state_scene)
	await _verify_npc_interact_starts_dialogue("PrologueSidePassage", "Steward", "prologue_side_passage_steward")
	await _verify_exit_trigger_fires("PrologueSidePassage", "prologue_inciting")

	_assert(SceneManager.current_state_name == "prologue_inciting",
		"After side passage exit, current_state_name == 'prologue_inciting' (got: %s)" % SceneManager.current_state_name)
	_assert_scene_node("Player", "PrologueInciting has Player")
	_assert_scene_node("KingAldren", "PrologueInciting has KingAldren")
	_assert_scene_node("Queen", "PrologueInciting has Queen")
	_assert_scene_node("Princess", "PrologueInciting has Princess")
	_assert_scene_node("Captain", "PrologueInciting has Captain")
	_assert_scene_node("Initiate", "PrologueInciting has Initiate")
	_assert_npc_sprite_has_texture(SceneManager.current_state_scene, "Princess", "PrologueInciting")
	_assert_npc_sprite_has_texture(SceneManager.current_state_scene, "Captain", "PrologueInciting")

	await _verify_npc_interact_starts_dialogue("PrologueInciting", "Princess", "prologue_inciting_incident")
	await _await_state("battle", 180)
	_assert(SceneManager.current_state_name == "battle",
		"Princess dialogue routes to battle (got: %s)" % SceneManager.current_state_name)
	var battle := SceneManager.current_state_scene
	if battle != null:
		_assert(str(battle.call("_encounter_kind")) == "prologue_captain",
			"Battle encounter_kind == 'prologue_captain'")

	await _click_battle_button("Defend", "Captain battle accepts Defend")
	_assert(str(PlayerData.get_flag("prologue_choice_round1", "")) == "defend",
		"Captain battle sets prologue_choice_round1=defend")
	await _click_battle_button("Strike", "Captain battle accepts Strike")
	_assert(str(PlayerData.get_flag("prologue_choice_round2", "")) == "strike",
		"Captain battle sets prologue_choice_round2=strike")
	await _click_battle_button("Improvise", "Captain battle accepts Improvise")
	_assert(str(PlayerData.get_flag("prologue_choice_round3", "")) == "clever",
		"Captain battle sets prologue_choice_round3=clever")

	await _await_state("prologue_post_battle", 700)
	_assert(SceneManager.current_state_name == "prologue_post_battle",
		"Unwinnable captain defeat routes to prologue_post_battle (got: %s)" % SceneManager.current_state_name)
	await _await_dialogue_active(180, "Post-battle dialogue starts")
	await _drain_active_dialogue("post-battle")
	await _await_state("character_creation", 300)

	_assert(SceneManager.current_state_name == "character_creation",
		"Post-battle dialogue routes to character_creation (got: %s)" % SceneManager.current_state_name)
	_assert_scene_node("Center/Layout/BeginButton", "CharacterCreation has BeginButton")
	var begin_button := _current_scene_node("Center/Layout/BeginButton") as Button
	if begin_button != null:
		_assert(begin_button.disabled, "CharacterCreation BeginButton is disabled in stub")
		_assert(begin_button.text == "Coming Soon", "CharacterCreation BeginButton labels the stub")
	var pure_button := _current_scene_node("Center/Layout/PathButtons/PureButton") as Button
	var mixed_button := _current_scene_node("Center/Layout/PathButtons/MixedButton") as Button
	if pure_button != null and mixed_button != null:
		_assert(not pure_button.visible and not mixed_button.visible,
			"CharacterCreation path buttons are hidden in terminal stub")
	_assert(SceneManager.current_state_name != "map",
		"Prologue completion does not enter the vertical-slice map")
	_assert(not SaveManager.has_save(),
		"CharacterCreation stub does not create a save")

	SaveManager.delete_save()
	_assert(not SaveManager.has_save(),
		"Save file remains absent at end of test")

	_log("--- Prologue smoke test complete ---")

func _await_state(state_name: String, max_frames: int) -> void:
	var frames := 0
	while frames < max_frames and SceneManager.current_state_name != state_name:
		await get_tree().process_frame
		frames += 1
	_assert(SceneManager.current_state_name == state_name,
		"State became '%s' within %d frames (got: %s after %d frames)" % [state_name, max_frames, SceneManager.current_state_name, frames])

func _await_dialogue_active(max_frames: int, message: String) -> void:
	var frames := 0
	while frames < max_frames and not DialogueManager.is_active():
		await get_tree().process_frame
		frames += 1
	_assert(DialogueManager.is_active(), "%s (waited %d frames)" % [message, frames])

func _drain_active_dialogue(label: String) -> void:
	var safety := 2000
	while DialogueManager.is_active() and safety > 0:
		DialogueManager.advance()
		await get_tree().process_frame
		safety -= 1
	_assert(not DialogueManager.is_active(),
		"%s dialogue fully drained (safety remaining: %d)" % [label, safety])

func _click_battle_button(label: String, message: String) -> void:
	var safety := 600
	var button: Button = null
	while safety > 0:
		button = _find_button_by_text(SceneManager.current_state_scene, label)
		if button != null and button.visible and not button.disabled:
			break
		await get_tree().process_frame
		safety -= 1

	if button == null:
		_fail("Battle button '%s' was not found" % label)
		return
	_assert(safety > 0, "Battle button '%s' became available" % label)
	button.pressed.emit()
	await _wait_frames(4)
	_pass(message)

func _find_button_by_text(root: Node, text: String) -> Button:
	if root == null:
		return null
	if root is Button and (root as Button).text == text:
		return root as Button
	for child in root.get_children():
		var found := _find_button_by_text(child, text)
		if found != null:
			return found
	return null

func _verify_npc_interact_starts_dialogue(scene_label: String, npc_name: String, expected_dialogue_id: String) -> void:
	var scene: Node = SceneManager.current_state_scene
	var player: Node = scene.get_node_or_null("Player") if scene != null else null
	var npc: Node = scene.get_node_or_null(npc_name) if scene != null else null
	if player == null or npc == null:
		_fail("%s: Player or NPC %s missing" % [scene_label, npc_name])
		return

	player.global_position = npc.global_position
	for i in range(SUBFRAMES_PER_WAIT):
		await get_tree().physics_frame
	for i in range(SUBFRAMES_PER_WAIT):
		await get_tree().process_frame

	var press_event := InputEventAction.new()
	press_event.action = "interact"
	press_event.pressed = true
	Input.parse_input_event(press_event)
	await _wait_frames(2)
	var release_event := InputEventAction.new()
	release_event.action = "interact"
	release_event.pressed = false
	Input.parse_input_event(release_event)
	await _wait_frames(4)

	_assert(DialogueManager.is_active(),
		"%s: pressing interact near %s starts dialogue" % [scene_label, npc_name])
	var active_node := DialogueManager.get_current_node()
	_assert(not active_node.is_empty(),
		"%s: dialogue '%s' exposes a current node" % [scene_label, expected_dialogue_id])
	await _drain_active_dialogue("%s/%s" % [scene_label, npc_name])

func _verify_exit_trigger_fires(scene_label: String, expected_next_state: String) -> void:
	var scene: Node = SceneManager.current_state_scene
	var player: Node = scene.get_node_or_null("Player") if scene != null else null
	var trigger: Area2D = scene.get_node_or_null("ExitTrigger") as Area2D if scene != null else null
	if player == null or trigger == null:
		_fail("%s: cannot test exit trigger (Player or ExitTrigger missing)" % scene_label)
		return

	var trigger_shape := trigger.get_node_or_null("CollisionShape2D") as CollisionShape2D
	var target_position: Vector2 = trigger_shape.global_position if trigger_shape != null else trigger.global_position
	player.global_position = target_position + Vector2(0, 40)
	for i in range(2):
		await get_tree().physics_frame
	Input.action_press("move_up")
	for i in range(SUBFRAMES_PER_WAIT * 3):
		await get_tree().physics_frame
	Input.action_release("move_up")
	await _await_state(expected_next_state, 120)

func _assert_player_sprite_has_frames(scene: Node, scene_label: String) -> void:
	if scene == null:
		return
	var player_sprite := scene.get_node_or_null("Player/PlayerSprite") as AnimatedSprite2D
	if player_sprite == null:
		_fail("%s: Player/PlayerSprite missing" % scene_label)
		return
	_assert(player_sprite.sprite_frames != null,
		"%s: Player/PlayerSprite.sprite_frames is set" % scene_label)
	_assert(player_sprite.visible,
		"%s: Player/PlayerSprite.visible == true" % scene_label)
	if player_sprite.sprite_frames != null:
		_assert(player_sprite.sprite_frames.has_animation("idle_down"),
			"%s: Player sprite has idle_down animation" % scene_label)

func _assert_player_actor_is_attendant(scene: Node, scene_label: String) -> void:
	if scene == null:
		return
	var player_sprite := scene.get_node_or_null("Player/PlayerSprite") as AnimatedSprite2D
	if player_sprite == null:
		return
	var actor_id := ActorVisuals.resolve_attendant_actor_id()
	_assert(player_sprite.position == ActorVisuals.get_map_offset(actor_id),
		"%s: Player sprite uses attendant map offset" % scene_label)
	_assert(player_sprite.scale == ActorVisuals.get_map_scale(actor_id),
		"%s: Player sprite uses attendant map scale" % scene_label)

func _assert_player_clamped_to_bounds(scene: Node, scene_label: String) -> void:
	if scene == null:
		return
	var player: Node2D = scene.get_node_or_null("Player") as Node2D
	var min_marker: Marker2D = scene.get_node_or_null("Bounds/Min") as Marker2D
	var max_marker: Marker2D = scene.get_node_or_null("Bounds/Max") as Marker2D
	if player == null or min_marker == null or max_marker == null:
		_fail("%s: cannot test bounds clamp" % scene_label)
		return
	var tests := [
		Vector2(min_marker.global_position.x - 100.0, player.global_position.y),
		Vector2(max_marker.global_position.x + 100.0, player.global_position.y),
		Vector2(player.global_position.x, min_marker.global_position.y - 100.0),
		Vector2(player.global_position.x, max_marker.global_position.y + 100.0),
	]
	for target in tests:
		player.global_position = target
		scene.call("_clamp_player_to_bounds")
		var inside_x := player.global_position.x >= min_marker.global_position.x and player.global_position.x <= max_marker.global_position.x
		var inside_y := player.global_position.y >= min_marker.global_position.y and player.global_position.y <= max_marker.global_position.y
		_assert(inside_x and inside_y,
			"%s: player clamps inside visible bounds from %s" % [scene_label, str(target)])

func _assert_npc_sprite_has_texture(scene: Node, npc_name: String, scene_label: String) -> void:
	if scene == null:
		return
	var npc := scene.get_node_or_null(npc_name)
	if npc == null:
		_fail("%s: NPC %s not found" % [scene_label, npc_name])
		return
	var sprite := npc.get_node_or_null("Sprite") as Sprite2D
	if sprite == null:
		_fail("%s: NPC %s has no Sprite child" % [scene_label, npc_name])
		return
	_assert(sprite.texture != null,
		"%s: NPC %s Sprite.texture is set" % [scene_label, npc_name])
	_assert(sprite.visible,
		"%s: NPC %s Sprite.visible == true" % [scene_label, npc_name])

func _assert_chapel_npcs_distinct(scene: Node) -> void:
	var a := _npc_sprite(scene, "PewNpcA")
	var b := _npc_sprite(scene, "PewNpcB")
	var temple := _npc_sprite(scene, "TempleAttendant")
	if a == null or b == null or temple == null:
		_fail("Chapel NPC distinctness cannot be tested because a sprite is missing")
		return
	_assert(a.texture != b.texture or a.modulate != b.modulate,
		"Chapel PewNpcA and PewNpcB use distinct visual entries")
	_assert(temple.texture != a.texture or temple.modulate != a.modulate,
		"Chapel TempleAttendant uses a distinct visual entry")

func _npc_sprite(scene: Node, npc_name: String) -> Sprite2D:
	var npc := scene.get_node_or_null(npc_name) if scene != null else null
	return npc.get_node_or_null("Sprite") as Sprite2D if npc != null else null

func _assert_player_not_stuck_in_wall(scene: Node) -> void:
	if scene == null:
		return
	var player: Node = scene.get_node_or_null("Player")
	if player == null:
		return
	if player is CharacterBody2D:
		var body := player as CharacterBody2D
		var initial := body.global_position
		body.velocity = Vector2(50.0, 0.0)
		body.move_and_slide()
		body.velocity = Vector2.ZERO
		var moved := body.global_position.distance_to(initial)
		_assert(moved > 0.0, "%s: player can move from spawn (moved %.1fpx)" % [scene.name, moved])
		body.global_position = initial

func _current_scene_node(path: String) -> Node:
	var scene: Node = SceneManager.current_state_scene
	if scene == null:
		return null
	return scene.get_node_or_null(path)

func _assert_scene_node(path: String, message: String) -> void:
	var node := _current_scene_node(path)
	if node == null:
		_fail("%s - node not found at path '%s'" % [message, path])
	else:
		_pass(message)

func _wait_frames(count: int) -> void:
	for i in range(count):
		await get_tree().process_frame

func _assert(cond: bool, message: String) -> void:
	if cond:
		_pass(message)
	else:
		_fail(message)

func _pass(message: String) -> void:
	_check_index += 1
	print("PASS [%03d] %s" % [_check_index, message])

func _fail(message: String) -> void:
	_check_index += 1
	_failure_count += 1
	push_error("FAIL [%03d] %s" % [_check_index, message])
	print("FAIL [%03d] %s" % [_check_index, message])

func _log(message: String) -> void:
	print(message)

func _quit_with_summary() -> void:
	_log("--- %d failures across %d checks ---" % [_failure_count, _check_index])
	get_tree().quit(1 if _failure_count > 0 else 0)
