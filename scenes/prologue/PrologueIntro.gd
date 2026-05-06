extends Control

# Prologue Room 0 — black-screen typewriter open.
# Reveals the two opening lines, pauses between, fades to chapel.

const NEXT_STATE := "prologue_chapel"
const LINE_ONE := "At first, there was only silence."
const LINE_TWO := "And then—"
const PAUSE_AFTER_LINE_ONE := 1.4
const PAUSE_AFTER_LINE_TWO := 0.8
const FADE_OUT_DURATION := 0.6

@onready var _line_one: Label = $LineOne
@onready var _line_two: Label = $LineTwo
@onready var _press_hint: Label = $PressHint

var _transitioning := false

func _ready() -> void:
	set_anchors_preset(Control.PRESET_FULL_RECT)
	_line_one.text = ""
	_line_one.visible_characters = 0
	_line_two.text = ""
	_line_two.visible_characters = 0
	_line_two.visible = false
	_press_hint.visible = false
	_clear_fade()
	_play_intro_sequence()

func _clear_fade() -> void:
	var fader = SceneManager.get_screen_fader()
	if fader != null:
		fader.clear_immediately()

func _play_intro_sequence() -> void:
	await _line_one.reveal(LINE_ONE)
	_press_hint.visible = true
	await get_tree().create_timer(PAUSE_AFTER_LINE_ONE).timeout
	_press_hint.visible = false
	_line_two.visible = true
	await _line_two.reveal(LINE_TWO)
	await get_tree().create_timer(PAUSE_AFTER_LINE_TWO).timeout
	_advance()

func _advance() -> void:
	if _transitioning:
		return
	_transitioning = true
	var fader = SceneManager.get_screen_fader()
	if fader != null:
		var tween: Tween = fader.fade_to_black(FADE_OUT_DURATION)
		if tween != null:
			await tween.finished
	SceneManager.change_state(NEXT_STATE, {
		"source": "prologue_intro",
		"fade_from_black": true,
	})

func _unhandled_input(event: InputEvent) -> void:
	# Pressing Space/Enter at any point skips the rest of the sequence.
	if _transitioning:
		return
	if event.is_action_pressed("ui_accept") or event.is_action_pressed("ui_select"):
		get_viewport().set_input_as_handled()
		# If a typewriter is mid-reveal, the TypewriterLabel handles its own
		# instant-reveal; otherwise jump straight to the next state.
		if not _line_one.is_revealing() and not _line_two.is_revealing():
			_advance()
