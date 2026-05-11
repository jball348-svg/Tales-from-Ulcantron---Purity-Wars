extends Node2D

# Shared controller for prologue exploration rooms (Chapel and Side Passage).
# Lighter than scenes/map/Map.gd — no mine/town logic, no save context, no
# overlay HUD. Just movement, camera, exit-trigger transition, fade-in, and
# NPC visual application via ActorVisuals.

const MOVE_SPEED := 180.0
const PLAYER_HALF_EXTENTS := Vector2(10.0, 10.0)

@export var next_state := ""
@export var ambient_music_cue := ""

var _state_transition_locked := false
var _player_facing := "down"

@onready var player: CharacterBody2D = $Player
@onready var player_sprite: AnimatedSprite2D = $Player/PlayerSprite
@onready var map_camera: Camera2D = $Player/MapCamera
@onready var exit_trigger: Area2D = $ExitTrigger
@onready var spawn_marker: Marker2D = $PlayerSpawn
@onready var bounds_root: Node = $Bounds

func _ready() -> void:
	var payload := SceneManager.consume_state_payload()
	_connect_trigger()
	_apply_player_visuals()
	_apply_player_indicator()
	_apply_npc_visuals()
	_configure_camera()
	map_camera.make_current()
	if spawn_marker != null:
		player.global_position = spawn_marker.global_position
	if ambient_music_cue != "":
		AudioManager.play_music(ambient_music_cue)
	if bool(payload.get("fade_from_black", false)) or str(payload.get("source", "")) == "new_game":
		_play_fade_in()

func _apply_player_indicator() -> void:
	# Disabled. The early-prologue "▼ you" placeholder label was a crutch for the
	# LPC-bookstore-tinted placeholder phase. Now that NPCs have distinct
	# sheet_frame placements and the player has an identifying tint, the
	# indicator just clutters the playable area. Kept as a no-op so existing
	# call sites in PrologueRoom._ready continue to work; remove the call site
	# entirely in a later cleanup if no flow regresses.
	pass

func _connect_trigger() -> void:
	if exit_trigger != null and not exit_trigger.body_entered.is_connected(_on_exit_trigger_body_entered):
		exit_trigger.body_entered.connect(_on_exit_trigger_body_entered)

func _physics_process(_delta: float) -> void:
	if _state_transition_locked:
		return
	if DialogueManager.is_active():
		player.velocity = Vector2.ZERO
		_update_player_animation(Vector2.ZERO)
		return
	var input_vector := Input.get_vector("move_left", "move_right", "move_up", "move_down")
	player.velocity = input_vector.normalized() * MOVE_SPEED if not input_vector.is_zero_approx() else Vector2.ZERO
	player.move_and_slide()
	_clamp_player_to_bounds()
	_update_player_animation(player.velocity)

func _on_exit_trigger_body_entered(body: Node) -> void:
	if body != player or _state_transition_locked or next_state == "":
		return
	_state_transition_locked = true
	_transition_to_next()

func _transition_to_next() -> void:
	var fader = SceneManager.get_screen_fader()
	if fader != null:
		var tween: Tween = fader.fade_to_black(0.25)
		if tween != null:
			await tween.finished
	SceneManager.change_state(next_state, {
		"source": SceneManager.current_state_name,
		"fade_from_black": true,
	})

func _apply_player_visuals() -> void:
	if not is_instance_valid(player_sprite):
		return
	var actor_id := ActorVisuals.resolve_attendant_actor_id()
	var frames := ActorVisuals.get_map_frames(actor_id)
	if frames != null:
		player_sprite.sprite_frames = frames
	player_sprite.position = ActorVisuals.get_map_offset(actor_id)
	player_sprite.scale = ActorVisuals.get_map_scale(actor_id)
	_update_player_animation(Vector2.ZERO)

func _apply_npc_visuals() -> void:
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

func _update_player_animation(movement_vector: Vector2) -> void:
	if not is_instance_valid(player_sprite) or player_sprite.sprite_frames == null:
		return
	if not movement_vector.is_zero_approx():
		if absf(movement_vector.x) > absf(movement_vector.y):
			_player_facing = "right" if movement_vector.x > 0.0 else "left"
		else:
			_player_facing = "up" if movement_vector.y < 0.0 else "down"
	var animation_name := ("walk_%s" % _player_facing) if not movement_vector.is_zero_approx() else ("idle_%s" % _player_facing)
	if player_sprite.animation != animation_name:
		player_sprite.play(animation_name)
	elif not player_sprite.is_playing():
		player_sprite.play()

func _configure_camera() -> void:
	if bounds_root == null:
		return
	var min_marker := bounds_root.get_node_or_null("Min") as Marker2D
	var max_marker := bounds_root.get_node_or_null("Max") as Marker2D
	if min_marker == null or max_marker == null:
		return
	var top_left_x := minf(min_marker.global_position.x, max_marker.global_position.x)
	var top_left_y := minf(min_marker.global_position.y, max_marker.global_position.y)
	var bottom_right_x := maxf(min_marker.global_position.x, max_marker.global_position.x)
	var bottom_right_y := maxf(min_marker.global_position.y, max_marker.global_position.y)
	# Godot 4 Camera2D limit_* values clamp the visible viewport edges to the
	# world bounds — the camera will not show pixels beyond these positions.
	# If the world is smaller than the viewport in either axis, the limits
	# would force the camera into an impossible state (limit_right < limit_left
	# + viewport_width), producing black bars and an off-centre player.
	# In that case, widen the limits symmetrically around the world centre so
	# the viewport exactly matches the larger of (world, viewport). This means
	# small worlds get black bars only beyond the world edge symmetrically
	# rather than asymmetrically at one side.
	var viewport_size: Vector2 = map_camera.get_viewport_rect().size
	var world_w: float = bottom_right_x - top_left_x
	var world_h: float = bottom_right_y - top_left_y
	if world_w < viewport_size.x:
		var world_center_x: float = (top_left_x + bottom_right_x) * 0.5
		top_left_x = world_center_x - viewport_size.x * 0.5
		bottom_right_x = world_center_x + viewport_size.x * 0.5
	if world_h < viewport_size.y:
		var world_center_y: float = (top_left_y + bottom_right_y) * 0.5
		top_left_y = world_center_y - viewport_size.y * 0.5
		bottom_right_y = world_center_y + viewport_size.y * 0.5
	map_camera.limit_left = int(top_left_x)
	map_camera.limit_top = int(top_left_y)
	map_camera.limit_right = int(bottom_right_x)
	map_camera.limit_bottom = int(bottom_right_y)

func _play_fade_in() -> void:
	# Default fade-in. Subclasses may override for room-specific timing.
	var fader = SceneManager.get_screen_fader()
	if fader == null:
		return
	fader.force_black()
	fader.fade_from_black(0.35)

func _clamp_player_to_bounds() -> void:
	if bounds_root == null:
		return
	var min_marker := bounds_root.get_node_or_null("Min") as Marker2D
	var max_marker := bounds_root.get_node_or_null("Max") as Marker2D
	if min_marker == null or max_marker == null:
		return
	var min_x := minf(min_marker.global_position.x, max_marker.global_position.x) + PLAYER_HALF_EXTENTS.x
	var min_y := minf(min_marker.global_position.y, max_marker.global_position.y) + PLAYER_HALF_EXTENTS.y
	var max_x := maxf(min_marker.global_position.x, max_marker.global_position.x) - PLAYER_HALF_EXTENTS.x
	var max_y := maxf(min_marker.global_position.y, max_marker.global_position.y) - PLAYER_HALF_EXTENTS.y
	var clamped := Vector2(
		clampf(player.global_position.x, min_x, max_x),
		clampf(player.global_position.y, min_y, max_y)
	)
	if clamped != player.global_position:
		player.global_position = clamped
