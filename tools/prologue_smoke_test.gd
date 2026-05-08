extends Node

# Headless smoke test for the prologue flow.
# Run with:
#   godot --headless --path . res://tools/prologue_smoke_test.tscn
#
# Bootstraps Main.tscn (so SceneManager / overlays are configured the same
# way as in the real game), then walks the prologue end-to-end:
#   title → prologue_intro → prologue_chapel → prologue_side_passage →
#   prologue_inciting → character_creation → map (Frontier Hamlet)
#
# At each step, the test asserts:
#   - SceneManager.current_state_name advanced to the expected value
#   - The scene has the expected child nodes (player, exit trigger, etc.)
#   - Programmatic methods can be called without crashing
#
# Logs PASS / FAIL per check; exits with code 0 on full pass, 1 on first
# failure.

const SUBFRAMES_PER_WAIT := 6

var _failure_count := 0
var _check_index := 0

func _ready() -> void:
	# Bootstrap the real Main scene so autoloads have their hosts.
	var main_scene := load("res://scenes/main/Main.tscn") as PackedScene
	if main_scene == null:
		_fail("Could not load Main.tscn")
		_quit_with_summary()
		return
	var main_instance := main_scene.instantiate()
	add_child(main_instance)

	# Wait several frames for Main._ready to configure SceneManager.
	for i in range(8):
		await get_tree().process_frame

	await _run_tests()
	_quit_with_summary()

func _run_tests() -> void:
	_log("--- Prologue smoke test starting ---")

	# 1. After boot, SceneManager should be in "title".
	_assert(SceneManager.current_state_name == "title",
		"After boot, SceneManager.current_state_name == 'title' (got: %s)" % SceneManager.current_state_name)

	# 2. start_new_game routes to prologue_intro.
	var started := SaveManager.start_new_game()
	_assert(started, "SaveManager.start_new_game() returned true")
	for i in range(4):
		await get_tree().process_frame
	_assert(SceneManager.current_state_name == "prologue_intro",
		"After start_new_game, current_state_name == 'prologue_intro' (got: %s)" % SceneManager.current_state_name)
	_assert(not SaveManager.has_save(),
		"No save file is created during the prologue (has_save() == false)")
	_assert_scene_node("Background", "PrologueIntro should have Background panel")
	_assert_scene_node("LineOne", "PrologueIntro should have LineOne typewriter")
	_assert_scene_node("LineTwo", "PrologueIntro should have LineTwo typewriter")

	# 3. Force-advance into chapel directly (skip the typewriter sequence).
	_change_state_or_fail("prologue_chapel", {"source": "test", "fade_from_black": false})
	for i in range(8):
		await get_tree().process_frame
	_assert_scene_node("Player", "PrologueChapel should have Player CharacterBody2D")
	_assert_scene_node("Player/PlayerSprite", "PrologueChapel should have PlayerSprite")
	_assert_scene_node("Player/MapCamera", "PrologueChapel should have MapCamera")
	_assert_scene_node("ExitTrigger", "PrologueChapel should have ExitTrigger")
	_assert_scene_node("Bounds/Min", "PrologueChapel should have Bounds/Min marker")
	_assert_scene_node("Bounds/Max", "PrologueChapel should have Bounds/Max marker")
	_assert_scene_node("PewNpcA", "PrologueChapel should have PewNpcA NPC instance")
	_assert_scene_node("PewNpcB", "PrologueChapel should have PewNpcB NPC instance")
	_assert_scene_node("TempleAttendant", "PrologueChapel should have TempleAttendant NPC instance")
	_assert_player_not_stuck_in_wall(SceneManager.current_state_scene)
	_assert_player_sprite_has_frames(SceneManager.current_state_scene, "PrologueChapel")
	_assert_npc_sprite_has_texture(SceneManager.current_state_scene, "PewNpcA", "PrologueChapel")
	_assert_npc_sprite_has_texture(SceneManager.current_state_scene, "PewNpcB", "PrologueChapel")
	_assert_npc_sprite_has_texture(SceneManager.current_state_scene, "TempleAttendant", "PrologueChapel")
	await _verify_exit_trigger_fires("PrologueChapel", "prologue_side_passage")

	# 4. Side passage.
	for i in range(8):
		await get_tree().process_frame
	_assert(SceneManager.current_state_name == "prologue_side_passage",
		"After chapel exit trigger, current_state_name == 'prologue_side_passage' (got: %s)" % SceneManager.current_state_name)
	_assert_scene_node("Player", "PrologueSidePassage should have Player")
	_assert_scene_node("ExitTrigger", "PrologueSidePassage should have ExitTrigger")
	_assert_scene_node("Steward", "PrologueSidePassage should have Steward NPC")
	_assert_player_not_stuck_in_wall(SceneManager.current_state_scene)
	await _verify_npc_interact_starts_dialogue("PrologueSidePassage", "Steward", "prologue_side_passage_steward")
	await _verify_exit_trigger_fires("PrologueSidePassage", "prologue_inciting")

	# 5. Inciting incident.
	for i in range(8):
		await get_tree().process_frame
	_assert(SceneManager.current_state_name == "prologue_inciting",
		"After side passage exit, current_state_name == 'prologue_inciting' (got: %s)" % SceneManager.current_state_name)
	_assert_scene_node("VignetteLabel", "PrologueInciting should have VignetteLabel")
	_assert_scene_node("ChoicePanel", "PrologueInciting should have ChoicePanel")
	_assert_scene_node("ChoicePanel/Layout/DefendButton", "PrologueInciting should have DefendButton")
	_assert_scene_node("ChoicePanel/Layout/StrikeButton", "PrologueInciting should have StrikeButton")
	_assert_scene_node("ChoicePanel/Layout/CleverButton", "PrologueInciting should have CleverButton")

	# Run the full inciting sequence: pre-fight dialogue → 3 rounds with
	# choice picks → post-defeat dialogue → auto-route to character_creation.
	await _verify_inciting_full_sequence()
	_assert(SceneManager.current_state_name == "character_creation",
		"PrologueInciting completed: routed to 'character_creation' (got: %s)" % SceneManager.current_state_name)
	for i in range(8):
		await get_tree().process_frame
	# Now in character_creation; reuse the same change_state path so the
	# downstream tests below run against a clean character_creation scene.
	_change_state_or_fail("character_creation", {"source": "test"})
	for i in range(8):
		await get_tree().process_frame
	_assert(SceneManager.current_state_name == "character_creation",
		"current_state_name == 'character_creation' (got: %s)" % SceneManager.current_state_name)
	_assert_scene_node("Center/Layout/PathButtons/PureButton", "CharacterCreation should have PureButton")
	_assert_scene_node("Center/Layout/PathButtons/MixedButton", "CharacterCreation should have MixedButton")
	_assert_scene_node("Center/Layout/BeginButton", "CharacterCreation should have BeginButton")

	# 6. commit_first_save → map (Frontier Hamlet).
	var committed := SaveManager.commit_first_save({"path": "pure"})
	_assert(committed, "SaveManager.commit_first_save({'path': 'pure'}) returned true")
	for i in range(12):
		await get_tree().process_frame
	_assert(SceneManager.current_state_name == "map",
		"After commit_first_save, current_state_name == 'map' (got: %s)" % SceneManager.current_state_name)
	_assert(PlayerData.current_region == "frontier_village",
		"PlayerData.current_region == 'frontier_village' (got: %s)" % PlayerData.current_region)
	_assert(PlayerData.is_pure(),
		"PlayerData.is_pure() == true after picking pure path")
	_assert(bool(PlayerData.get_flag("prologue_completed", false)),
		"PlayerData.get_flag('prologue_completed') == true after commit_first_save")

	# Wait for the autosave-on-map-entry to fire (it's call_deferred from
	# SaveManager._on_state_changed).
	for i in range(20):
		await get_tree().process_frame
	_assert(SaveManager.has_save(),
		"After landing in Frontier Hamlet, SaveManager.has_save() == true (autosave fired)")

	# 7. Cleanup — delete the save we just wrote so re-runs are deterministic.
	SaveManager.delete_save()
	_assert(not SaveManager.has_save(),
		"Save file deleted cleanly at end of test")

	_log("--- Prologue smoke test complete ---")

func _verify_inciting_full_sequence() -> void:
	# The PrologueInciting controller starts pre-fight dialogue ~0.5s after
	# _ready, runs three rounds (each waits for a button press), then plays
	# post-defeat dialogue, then routes to character_creation.
	var inciting: Node = SceneManager.current_state_scene
	if inciting == null:
		_fail("Inciting sequence: scene is null")
		return
	# Wait for the pre-fight dialogue to start (after PRE_FIGHT_DELAY).
	await _await_dialogue_active(300, "Inciting: pre-fight dialogue starts")
	await _drain_active_dialogue("pre-fight")
	# Round 1
	await _click_choice_button(inciting, "DefendButton", "Inciting round 1: DefendButton click registers")
	# Round 2
	await _click_choice_button(inciting, "StrikeButton", "Inciting round 2: StrikeButton click registers")
	# Round 3
	await _click_choice_button(inciting, "CleverButton", "Inciting round 3: CleverButton (Improvise) click registers")
	# Post-defeat dialogue
	await _await_dialogue_active(2000, "Inciting: post-defeat dialogue starts")
	await _drain_active_dialogue("post-defeat")
	# Wait for fade-out to character_creation (FADE_OUT_DURATION = 0.7s).
	for i in range(300):
		await get_tree().process_frame
		if SceneManager.current_state_name == "character_creation":
			break
	_assert(bool(PlayerData.get_flag("prologue_choice_round1", "")) != false,
		"Inciting: prologue_choice_round1 flag set after round 1 (got: %s)" % str(PlayerData.get_flag("prologue_choice_round1", "")))
	_assert(bool(PlayerData.get_flag("prologue_choice_round2", "")) != false,
		"Inciting: prologue_choice_round2 flag set after round 2")
	_assert(bool(PlayerData.get_flag("prologue_choice_round3", "")) != false,
		"Inciting: prologue_choice_round3 flag set after round 3")

func _await_dialogue_active(max_frames: int, message: String) -> void:
	var frames := 0
	while frames < max_frames:
		if DialogueManager.is_active():
			break
		await get_tree().process_frame
		frames += 1
	_assert(DialogueManager.is_active(), message + " (waited %d frames)" % frames)

func _drain_active_dialogue(label: String) -> void:
	var safety := 2000
	while DialogueManager.is_active() and safety > 0:
		DialogueManager.advance()
		await get_tree().process_frame
		safety -= 1
	_assert(not DialogueManager.is_active(),
		"Inciting: %s dialogue fully drained (safety remaining: %d)" % [label, safety])

func _click_choice_button(scene: Node, button_name: String, message: String) -> void:
	# Wait for the choice panel to be visible (controller waits ROUND_BEAT_DELAY
	# after each vignette before showing it). Then emit the button's pressed
	# signal directly to advance the round.
	var button := scene.get_node_or_null("ChoicePanel/Layout/" + button_name) as Button
	if button == null:
		_fail("Inciting: choice button %s missing" % button_name)
		return
	var safety := 2000
	var panel := scene.get_node_or_null("ChoicePanel") as Control
	while safety > 0:
		if panel != null and panel.visible and not button.disabled:
			break
		await get_tree().process_frame
		safety -= 1
	_assert(safety > 0, "Inciting: choice panel became visible for " + button_name)
	button.pressed.emit()
	for i in range(3):
		await get_tree().process_frame
	_pass(message)

func _verify_npc_interact_starts_dialogue(scene_label: String, npc_name: String, expected_dialogue_id: String) -> void:
	var scene: Node = SceneManager.current_state_scene
	var player: Node = scene.get_node_or_null("Player")
	var npc: Node = scene.get_node_or_null(npc_name)
	if player == null or npc == null:
		_fail("%s: Player or NPC %s missing" % [scene_label, npc_name])
		return
	# Move the player on top of the NPC's interaction zone, wait for the
	# Area2D body_entered signal to land, then synthesize an "interact" action.
	player.global_position = npc.global_position
	for i in range(SUBFRAMES_PER_WAIT):
		await get_tree().physics_frame
	for i in range(SUBFRAMES_PER_WAIT):
		await get_tree().process_frame
	# Synthesize an interact key press as a real InputEvent so it flows through
	# NPC.gd's _unhandled_input handler (Input.action_press alone only updates
	# polling state and doesn't dispatch to event handlers).
	var press_event := InputEventAction.new()
	press_event.action = "interact"
	press_event.pressed = true
	Input.parse_input_event(press_event)
	for i in range(2):
		await get_tree().process_frame
	var release_event := InputEventAction.new()
	release_event.action = "interact"
	release_event.pressed = false
	Input.parse_input_event(release_event)
	for i in range(4):
		await get_tree().process_frame
	_assert(DialogueManager.is_active(),
		"%s: pressing 'interact' near %s starts a dialogue" % [scene_label, npc_name])
	# Cancel the dialogue so subsequent tests are clean.
	while DialogueManager.is_active():
		DialogueManager.advance()
		await get_tree().process_frame

func _verify_exit_trigger_fires(scene_label: String, expected_next_state: String) -> void:
	var scene: Node = SceneManager.current_state_scene
	var player: Node = scene.get_node_or_null("Player")
	var trigger: Area2D = scene.get_node_or_null("ExitTrigger") as Area2D
	if player == null or trigger == null:
		_fail("%s: cannot test exit trigger (Player or ExitTrigger missing)" % scene_label)
		return

	# Position the player just below the trigger, then synthesize a held
	# "move_up" input so PrologueRoom._physics_process drives them into the
	# trigger via the real movement code path. (Setting body.velocity
	# directly is overwritten by the controller's Input.get_vector reset
	# every physics frame.)
	var trigger_shape := trigger.get_node_or_null("CollisionShape2D") as CollisionShape2D
	var target_position: Vector2 = trigger_shape.global_position if trigger_shape != null else trigger.global_position
	player.global_position = target_position + Vector2(0, 40)
	for i in range(2):
		await get_tree().physics_frame
	Input.action_press("move_up")
	for i in range(SUBFRAMES_PER_WAIT * 3):
		await get_tree().physics_frame
	Input.action_release("move_up")
	for i in range(SUBFRAMES_PER_WAIT):
		await get_tree().process_frame
	# Wait for the fade-out + state change to complete.
	for i in range(40):
		await get_tree().process_frame
	_assert(SceneManager.current_state_name == expected_next_state,
		"%s: walking the player into ExitTrigger advances state to %s (got: %s)" % [scene_label, expected_next_state, SceneManager.current_state_name])

func _assert_player_sprite_has_frames(scene: Node, scene_label: String) -> void:
	if scene == null:
		return
	var player_sprite := scene.get_node_or_null("Player/PlayerSprite") as AnimatedSprite2D
	if player_sprite == null:
		_fail("%s: Player/PlayerSprite missing" % scene_label)
		return
	_assert(player_sprite.sprite_frames != null,
		"%s: Player/PlayerSprite.sprite_frames is set (player will be visible)" % scene_label)
	_assert(player_sprite.visible,
		"%s: Player/PlayerSprite.visible == true" % scene_label)
	if player_sprite.sprite_frames != null:
		_assert(player_sprite.sprite_frames.has_animation("idle_down"),
			"%s: Player sprite has 'idle_down' animation" % scene_label)

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

func _assert_player_not_stuck_in_wall(scene: Node) -> void:
	if scene == null:
		return
	var player: Node = scene.get_node_or_null("Player")
	if player == null:
		return
	# Apply a small velocity and run a physics step. If the player can't move at
	# all, the spawn position is overlapping a static body.
	if player is CharacterBody2D:
		var body := player as CharacterBody2D
		var initial := body.global_position
		body.velocity = Vector2(50.0, 0.0)
		body.move_and_slide()
		body.velocity = Vector2.ZERO
		var moved := body.global_position.distance_to(initial)
		_assert(moved > 0.0, "%s: player can move from spawn (moved %.1fpx)" % [scene.name, moved])
		body.global_position = initial

func _change_state_or_fail(state_name: String, payload: Dictionary) -> void:
	var ok := SceneManager.change_state(state_name, payload, true)
	_assert(ok, "SceneManager.change_state('%s') returned true" % state_name)

func _assert_scene_node(path: String, message: String) -> void:
	var scene: Node = SceneManager.current_state_scene
	if scene == null:
		_fail("%s — current_state_scene is null" % message)
		return
	var node := scene.get_node_or_null(path)
	if node == null:
		_fail("%s — node not found at path '%s'" % [message, path])
	else:
		_pass(message)

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
