extends Control

# Stub for chunk 1 — routing scaffolding only.
# Chunk 4 replaces this with the real Pure / Mixed pick + name field +
# Begin button.

@onready var _label: Label = $Label

func _ready() -> void:
	set_anchors_preset(Control.PRESET_FULL_RECT)
	_label.text = "Character Creation (stub)\n\nPress Space to begin your journey."

func _unhandled_input(event: InputEvent) -> void:
	if event.is_action_pressed("ui_accept") or event.is_action_pressed("ui_select"):
		get_viewport().set_input_as_handled()
		# Defaults to Pure in the stub. Chunk 4 takes the player's pick.
		SaveManager.commit_first_save({"path": "pure"})
