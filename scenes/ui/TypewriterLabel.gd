extends Label

# Reusable typewriter Label. Reveals text character-by-character via the
# built-in `visible_characters` property tweened from 0 to full length.
#
# Usage:
#     var label = $TypewriterLabel
#     await label.reveal("At first, there was only silence.").finished
#
# Pressing the "ui_accept" / "ui_select" action while a reveal is in
# progress instantly completes it.

signal finished

@export var chars_per_sec := 32.0
@export var skippable := true

var _tween: Tween

func reveal(new_text: String, rate: float = 0.0) -> Signal:
	text = new_text
	visible_characters = 0
	_kill_tween()
	var rate_used: float = rate if rate > 0.0 else chars_per_sec
	if rate_used <= 0.0 or text.is_empty():
		instant_reveal()
		return finished
	var duration: float = float(text.length()) / rate_used
	_tween = create_tween()
	_tween.tween_property(self, "visible_characters", text.length(), duration)
	_tween.tween_callback(_on_reveal_complete)
	return finished

func instant_reveal() -> void:
	_kill_tween()
	visible_characters = -1
	finished.emit()

func is_revealing() -> bool:
	return visible_characters >= 0 and visible_characters < text.length()

func _on_reveal_complete() -> void:
	visible_characters = -1
	finished.emit()

func _kill_tween() -> void:
	if _tween != null and _tween.is_valid():
		_tween.kill()
	_tween = null

func _unhandled_input(event: InputEvent) -> void:
	if not skippable:
		return
	if not is_revealing():
		return
	if event.is_action_pressed("ui_accept") or event.is_action_pressed("ui_select"):
		instant_reveal()
		get_viewport().set_input_as_handled()
