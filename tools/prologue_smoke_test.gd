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

	# Skip the dialogue + rounds by jumping to character_creation directly. The
	# round-by-round behaviour will be smoke-tested separately when the user
	# play-tests interactively; here we verify routing only.
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

func _verify_exit_trigger_fires(scene_label: String, expected_next_state: String) -> void:
	var scene: Node = SceneManager.current_state_scene
	var player: Node = scene.get_node_or_null("Player")
	var trigger: Area2D = scene.get_node_or_null("ExitTrigger") as Area2D
	if player == null or trigger == null:
		_fail("%s: cannot test exit trigger (Player or ExitTrigger missing)" % scene_label)
		return

	# Move the player into the exit trigger's collision shape and wait a couple
	# of physics frames for body_entered to fire. The trigger's CollisionShape2D
	# child holds the actual position; use its global position.
	var trigger_shape := trigger.get_node_or_null("CollisionShape2D") as CollisionShape2D
	var target_position: Vector2 = trigger_shape.global_position if trigger_shape != null else trigger.global_position
	player.global_position = target_position
	for i in range(SUBFRAMES_PER_WAIT):
		await get_tree().physics_frame
	for i in range(SUBFRAMES_PER_WAIT):
		await get_tree().process_frame
	# Wait for the fade-out + state change to complete.
	for i in range(20):
		await get_tree().process_frame
	_assert(SceneManager.current_state_name == expected_next_state,
		"%s: walking the player into ExitTrigger advances state to %s (got: %s)" % [scene_label, expected_next_state, SceneManager.current_state_name])

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
