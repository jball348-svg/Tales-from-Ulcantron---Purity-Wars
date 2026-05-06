extends Control

# Stub character-creation scene. Plays after the prologue's defeat sequence.
# Lets the player commit to a Pure or Mixed starting path, then routes into
# Frontier Hamlet via SaveManager.commit_first_save (which triggers the
# autosave on map entry — this is the point at which the player's first save
# file is created).
#
# A future pass replaces this with the full character-creation experience
# (specialisation, name field, presented gender, portraiture).

const PURE_PATH := "pure"
const MIXED_PATH := "mixed"

@onready var _pure_button: Button = $Center/Layout/PathButtons/PureButton
@onready var _mixed_button: Button = $Center/Layout/PathButtons/MixedButton
@onready var _begin_button: Button = $Center/Layout/BeginButton
@onready var _path_summary: Label = $Center/Layout/PathSummary

var _selected_path := ""
var _committing := false

func _ready() -> void:
	set_anchors_preset(Control.PRESET_FULL_RECT)
	_pure_button.pressed.connect(_on_pure_pressed)
	_mixed_button.pressed.connect(_on_mixed_pressed)
	_begin_button.pressed.connect(_on_begin_pressed)
	_begin_button.disabled = true
	_path_summary.text = "Choose your starting path."
	_clear_fade()

func _clear_fade() -> void:
	var fader = SceneManager.get_screen_fader()
	if fader != null:
		fader.clear_immediately()

func _on_pure_pressed() -> void:
	_selected_path = PURE_PATH
	_path_summary.text = "Pure — a single class, deepened over time."
	_pure_button.modulate = Color(1.0, 0.95, 0.84, 1.0)
	_mixed_button.modulate = Color(1.0, 1.0, 1.0, 0.65)
	_begin_button.disabled = false
	AudioManager.play_sfx(AudioManager.SFX_UI_CONFIRM, -8.0)

func _on_mixed_pressed() -> void:
	_selected_path = MIXED_PATH
	_path_summary.text = "Mixed — two classes carried together."
	_mixed_button.modulate = Color(1.0, 0.95, 0.84, 1.0)
	_pure_button.modulate = Color(1.0, 1.0, 1.0, 0.65)
	_begin_button.disabled = false
	AudioManager.play_sfx(AudioManager.SFX_UI_CONFIRM, -8.0)

func _on_begin_pressed() -> void:
	if _committing or _selected_path == "":
		return
	_committing = true
	AudioManager.play_sfx(AudioManager.SFX_UI_CONFIRM, -4.0)
	_pure_button.disabled = true
	_mixed_button.disabled = true
	_begin_button.disabled = true

	var fader = SceneManager.get_screen_fader()
	if fader != null:
		var tween: Tween = fader.fade_to_black(0.5)
		if tween != null:
			await tween.finished

	SaveManager.commit_first_save({"path": _selected_path})
