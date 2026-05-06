extends Control

# Stub for chunk 1 — routing scaffolding only.
# Chunk 5 replaces this with the inciting incident cutscene plus the
# scripted three-round set-piece fight and defeat sequence.

const NEXT_STATE := "character_creation"

@onready var _label: Label = $Label

func _ready() -> void:
	set_anchors_preset(Control.PRESET_FULL_RECT)
	_label.text = "Prologue Inciting Incident (stub)\n\nPress Space to advance."

func _unhandled_input(event: InputEvent) -> void:
	if event.is_action_pressed("ui_accept") or event.is_action_pressed("ui_select"):
		get_viewport().set_input_as_handled()
		SceneManager.change_state(NEXT_STATE, {"source": "prologue_inciting"})
