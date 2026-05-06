extends Control

# Prologue Room 3 — the inciting incident and the unwinnable set-piece fight.
# Reuses the existing DialogueManager for the pre-fight and post-defeat
# dialogue, runs three player-driven choice rounds in between, and routes
# into character creation when the scripted defeat finishes.

const PRE_FIGHT_DIALOGUE_ID := "prologue_inciting_incident"
const POST_DEFEAT_DIALOGUE_ID := "prologue_unwinnable_fight"
const NEXT_STATE := "character_creation"
const FADE_IN_DURATION := 0.6
const FADE_OUT_DURATION := 0.7
const PRE_FIGHT_DELAY := 0.5
const ROUND_BEAT_DELAY := 0.6
const VIGNETTE_HOLD := 1.4

const CHOICE_DEFEND := "defend"
const CHOICE_STRIKE := "strike"
const CHOICE_CLEVER := "clever"

const ROUND_TELEGRAPHS: Array = [
	"The Captain steps forward, blade still sheathed, expecting you to give ground.",
	"The Captain draws. He levels the blade at your shoulder, slow enough that you could thank him for the mercy.",
	"The Captain lowers his stance. There is no flourish left. Only the work of finishing.",
]

const ROUND_VIGNETTES: Dictionary = {
	CHOICE_DEFEND: [
		"You hold position. The Princess sees you do it. The witnesses see you do it. He pushes you back two steps and you do not fall.",
		"You catch his blade against the censer-chain. Sparks. The chapel inhales. He pulls the chain free with one hand.",
		"You will not move. He plants a gauntleted hand on your chest and walks you off your feet.",
	],
	CHOICE_STRIKE: [
		"You commit. The blade you took from a guard's belt scrapes his pauldron — a sound the chapel will remember.",
		"You drive forward. He turns into the swing and the impact runs up your arm and out the back of your shoulder.",
		"You strike the only thing within reach: his gauntlet. He lets you, and breaks your wrist for the trouble.",
	],
	CHOICE_CLEVER: [
		"You throw the censer. Smoke and ash bloom between you. He coughs once. The Princess does not.",
		"You go for the bell-rope. The peal is ugly and immediate. Half the chapel turns; the other half cannot look away.",
		"You go for his eyes. He blocks it like a man brushing off a fly, and the chapel flinches at how casual it was.",
	],
}

var _round_choice_pending := false
var _selected_choice := ""
var _transitioning := false

@onready var _vignette_label: Label = $VignetteLabel
@onready var _choice_panel: Control = $ChoicePanel
@onready var _defend_button: Button = $ChoicePanel/Layout/DefendButton
@onready var _strike_button: Button = $ChoicePanel/Layout/StrikeButton
@onready var _clever_button: Button = $ChoicePanel/Layout/CleverButton

func _ready() -> void:
	set_anchors_preset(Control.PRESET_FULL_RECT)
	_vignette_label.text = ""
	_vignette_label.visible_characters = 0
	_choice_panel.visible = false
	_defend_button.pressed.connect(_on_choice_pressed.bind(CHOICE_DEFEND))
	_strike_button.pressed.connect(_on_choice_pressed.bind(CHOICE_STRIKE))
	_clever_button.pressed.connect(_on_choice_pressed.bind(CHOICE_CLEVER))
	_play_fade_in()
	_run_sequence()

func _play_fade_in() -> void:
	var fader = SceneManager.get_screen_fader()
	if fader == null:
		return
	fader.force_black()
	fader.fade_from_black(FADE_IN_DURATION)

func _run_sequence() -> void:
	await get_tree().create_timer(PRE_FIGHT_DELAY).timeout
	await _play_dialogue(PRE_FIGHT_DIALOGUE_ID)

	for round_index in range(3):
		await _play_round(round_index)

	await _play_dialogue(POST_DEFEAT_DIALOGUE_ID)
	await _exit_to_character_creation()

func _play_dialogue(dialogue_id: String) -> void:
	DialogueManager.start_dialogue(dialogue_id)
	# Yield until the active dialogue finishes. dialogue_ended fires once when
	# the player advances past the last node.
	while DialogueManager.is_active():
		await SignalBus.dialogue_ended

func _play_round(round_index: int) -> void:
	await _show_vignette(ROUND_TELEGRAPHS[round_index])
	await get_tree().create_timer(ROUND_BEAT_DELAY).timeout
	var choice := await _await_choice()
	PlayerData.set_flag("prologue_choice_round%d" % (round_index + 1), choice)
	var lines: Array = ROUND_VIGNETTES.get(choice, [])
	var line: String = ""
	if round_index < lines.size():
		line = str(lines[round_index])
	if line != "":
		await _show_vignette(line)
		await get_tree().create_timer(VIGNETTE_HOLD).timeout

func _show_vignette(line: String) -> void:
	if _vignette_label.has_method("reveal"):
		var sig: Signal = _vignette_label.call("reveal", line)
		await sig
	else:
		_vignette_label.text = line
		_vignette_label.visible_characters = -1

func _await_choice() -> String:
	_selected_choice = ""
	_round_choice_pending = true
	_choice_panel.visible = true
	_defend_button.disabled = false
	_strike_button.disabled = false
	_clever_button.disabled = false
	_defend_button.grab_focus()
	while _round_choice_pending:
		await get_tree().process_frame
	_choice_panel.visible = false
	return _selected_choice

func _on_choice_pressed(choice: String) -> void:
	if not _round_choice_pending:
		return
	_round_choice_pending = false
	_selected_choice = choice
	_defend_button.disabled = true
	_strike_button.disabled = true
	_clever_button.disabled = true
	AudioManager.play_sfx(AudioManager.SFX_UI_CONFIRM, -8.0)

func _exit_to_character_creation() -> void:
	if _transitioning:
		return
	_transitioning = true
	var fader = SceneManager.get_screen_fader()
	if fader != null:
		var tween: Tween = fader.fade_to_black(FADE_OUT_DURATION)
		if tween != null:
			await tween.finished
	SceneManager.change_state(NEXT_STATE, {"source": "prologue_inciting"})
