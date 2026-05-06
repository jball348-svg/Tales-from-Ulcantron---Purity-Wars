extends Control

# Stub for chunk 1 — routing scaffolding only.
# Chunk 3 replaces this with a Node2D-based map scene plus the steward
# NPC dialogue wiring.

const NEXT_STATE := "prologue_inciting"

@onready var _label: Label = $Label

func _ready() -> void:
	set_anchors_preset(Control.PRESET_FULL_RECT)
	_label.text = "Prologue Side Passage (stub)\n\nPress Space to advance."

func _unhandled_input(event: InputEvent) -> void:
	if event.is_action_pressed("ui_accept") or event.is_action_pressed("ui_select"):
		get_viewport().set_input_as_handled()
		SceneManager.change_state(NEXT_STATE, {"source": "prologue_side_passage"})
