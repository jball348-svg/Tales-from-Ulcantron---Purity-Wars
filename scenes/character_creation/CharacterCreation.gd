extends Control

# Terminal character-creation placeholder for the prologue milestone.
# The full creator will live here later; for now the prologue should end here
# without committing a save or routing into the vertical-slice map.

@onready var _heading: Label = $Center/Layout/Heading
@onready var _pure_button: Button = $Center/Layout/PathButtons/PureButton
@onready var _mixed_button: Button = $Center/Layout/PathButtons/MixedButton
@onready var _begin_button: Button = $Center/Layout/BeginButton
@onready var _path_summary: Label = $Center/Layout/PathSummary

func _ready() -> void:
	set_anchors_preset(Control.PRESET_FULL_RECT)
	_heading.text = "Character Creation"
	_pure_button.visible = false
	_mixed_button.visible = false
	_begin_button.text = "Coming Soon"
	_begin_button.disabled = true
	_path_summary.text = "The prologue currently ends here. Character creation will open this slot next."
	_clear_fade()

func _clear_fade() -> void:
	var fader = SceneManager.get_screen_fader()
	if fader != null:
		fader.clear_immediately()
