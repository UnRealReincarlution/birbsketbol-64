extends Node2D

func _ready():
	if Winner.player == 1:
		$Player_1_Win.show()
		$Player_2_Win.hide()

func _input(event):
	if event is InputEventKey:
		if event.scancode in [KEY_ENTER, KEY_SPACE]:
			get_tree().change_scene("res://Main.tscn")
