extends Control

const DIALOGUE_ID := "prologue_unwinnable_fight"
const NEXT_STATE := "character_creation"
const FADE_OUT_DURATION := 0.55

var _transitioning := false

func _ready() -> void:
	set_anchors_preset(Control.PRESET_FULL_RECT)
	_play_fade_in()
	call_deferred("_run_sequence")

func _play_fade_in() -> void:
	var fader = SceneManager.get_screen_fader()
	if fader == null:
		return
	fader.force_black()
	fader.fade_from_black(0.35)

func _run_sequence() -> void:
	await get_tree().create_timer(0.2).timeout
	DialogueManager.start_dialogue(DIALOGUE_ID)
	while DialogueManager.is_active():
		await SignalBus.dialogue_ended
	await _exit_to_character_creation()

func _exit_to_character_creation() -> void:
	if _transitioning:
		return
	_transitioning = true
	var fader = SceneManager.get_screen_fader()
	if fader != null:
		var tween: Tween = fader.fade_to_black(FADE_OUT_DURATION)
		if tween != null:
			await tween.finished
	SceneManager.change_state(NEXT_STATE, {
		"source": "prologue_post_battle",
		"fade_from_black": true,
	}, true)
