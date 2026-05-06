extends Control

# Stub for chunk 1 — routing scaffolding only.
# Chunk 2 replaces this with a Node2D-based map scene built on the existing
# Map.gd controller (tilemap, player spawn, exit trigger, NPC nodes).

const NEXT_STATE := "prologue_side_passage"

@onready var _label: Label = $Label

func _ready() -> void:
	set_anchors_preset(Control.PRESET_FULL_RECT)
	_label.text = "Prologue Chapel (stub)\n\nPress Space to advance."

func _unhandled_input(event: InputEvent) -> void:
	if event.is_action_pressed("ui_accept") or event.is_action_pressed("ui_select"):
		get_viewport().set_input_as_handled()
		SceneManager.change_state(NEXT_STATE, {"source": "prologue_chapel"})
