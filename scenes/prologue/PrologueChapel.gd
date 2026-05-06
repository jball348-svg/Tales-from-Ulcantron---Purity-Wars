extends "res://scenes/prologue/PrologueRoom.gd"

# Class Chapel — Room 1 of the prologue. Player spawns at the south doorway,
# walks the aisle past pew NPCs (chunk 3 wires their dialogue), and exits
# through the rear-altar door into the Side Passage.

func _play_fade_in() -> void:
	var fader = SceneManager.get_screen_fader()
	if fader == null:
		return
	fader.force_black()
	fader.fade_from_black(0.45)
