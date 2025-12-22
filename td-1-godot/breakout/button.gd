extends Button



func _on_pressed() -> void:
	print("here")
	ScoreTracker.reset()
	print("pressed")
	get_tree().change_scene_to_file("res://breakout/main.tscn")
