extends Control

const NEXT_STATE := "prologue_intro"
const FADE_OUT_DURATION := 0.35

@onready var _male_button: Button = $Center/Layout/ButtonRow/MaleButton
@onready var _female_button: Button = $Center/Layout/ButtonRow/FemaleButton

var _transitioning := false

func _ready() -> void:
	set_anchors_preset(Control.PRESET_FULL_RECT)
	_male_button.pressed.connect(_on_presentation_selected.bind(PlayerData.ATTENDANT_PRESENTATION_MALE))
	_female_button.pressed.connect(_on_presentation_selected.bind(PlayerData.ATTENDANT_PRESENTATION_FEMALE))
	_male_button.grab_focus()
	_play_fade_in()

func _play_fade_in() -> void:
	var fader = SceneManager.get_screen_fader()
	if fader == null:
		return
	fader.force_black()
	fader.fade_from_black(0.35)

func _on_presentation_selected(presentation: String) -> void:
	if _transitioning:
		return
	_transitioning = true
	PlayerData.set_attendant_presentation(presentation)
	AudioManager.play_sfx(AudioManager.SFX_UI_CONFIRM, -8.0)
	_male_button.disabled = true
	_female_button.disabled = true

	var fader = SceneManager.get_screen_fader()
	if fader != null:
		var tween: Tween = fader.fade_to_black(FADE_OUT_DURATION)
		if tween != null:
			await tween.finished

	SceneManager.change_state(NEXT_STATE, {
		"source": "prologue_player_select",
		"fade_from_black": true,
	}, true)
