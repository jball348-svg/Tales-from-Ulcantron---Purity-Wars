extends "res://scenes/prologue/PrologueRoom.gd"

const PRE_FIGHT_DIALOGUE_ID := "prologue_inciting_incident"
const BATTLE_STATE := "battle"
const RETURN_STATE := "prologue_post_battle"

var _battle_started := false

func _ready() -> void:
	if not SignalBus.dialogue_ended.is_connected(_on_dialogue_ended):
		SignalBus.dialogue_ended.connect(_on_dialogue_ended)
	super._ready()

func _exit_tree() -> void:
	if SignalBus.dialogue_ended.is_connected(_on_dialogue_ended):
		SignalBus.dialogue_ended.disconnect(_on_dialogue_ended)

func _on_dialogue_ended(npc_id: String) -> void:
	if npc_id != PRE_FIGHT_DIALOGUE_ID or _battle_started:
		return
	_battle_started = true
	_state_transition_locked = true
	call_deferred("_start_captain_battle")

func _start_captain_battle() -> void:
	var fader = SceneManager.get_screen_fader()
	if fader != null:
		var tween: Tween = fader.fade_to_black(0.35)
		if tween != null:
			await tween.finished

	SceneManager.change_state(BATTLE_STATE, {
		"source": "prologue_inciting",
		"encounter_kind": "prologue_captain",
		"return_state": RETURN_STATE,
		"environment_id": "chapel",
		"fade_from_black": true,
	}, true)
