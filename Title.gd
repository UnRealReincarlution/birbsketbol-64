extends Node2D

func _input(event):
	if event is InputEventKey:
		if event.scancode in [KEY_ENTER, KEY_SPACE]:
			get_tree().change_scene("res://Main.tscn")
