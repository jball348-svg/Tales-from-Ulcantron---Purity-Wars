extends Control

# Stub for chunk 1 — routing scaffolding only.
# Chunk 4 replaces this with the typewriter open
# ("At first, there was only silence." / beat / "And then—") and a fade
# into the chapel.

const NEXT_STATE := "prologue_chapel"

@onready var _label: Label = $Label

func _ready() -> void:
	set_anchors_preset(Control.PRESET_FULL_RECT)
	_label.text = "Prologue Intro (stub)\n\nPress Space to advance."
	_clear_fade()

func _unhandled_input(event: InputEvent) -> void:
	if event.is_action_pressed("ui_accept") or event.is_action_pressed("ui_select"):
		get_viewport().set_input_as_handled()
		_advance()

func _advance() -> void:
	SceneManager.change_state(NEXT_STATE, {"source": "prologue_intro"})

func _clear_fade() -> void:
	var fader = SceneManager.get_screen_fader()
	if fader != null:
		fader.clear_immediately()
