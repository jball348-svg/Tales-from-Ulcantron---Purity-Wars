extends SceneTree

func _init():
	# Use the main scene but wait for it to load
	await create_timer(2.0).timeout
	
	var image = root.get_viewport().get_texture().get_image()
	image.save_png("res://scratch/final_audit.png")
	print("Screenshot saved to scratch/final_audit.png")
	quit()
