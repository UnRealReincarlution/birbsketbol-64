extends Node2D

func _ready():
	if Winner.player == 1:
		$Player_1_Win.show()
		$Player_2_Win.hide()
		$Player_1_Cry.hide()
		$Player_2_Cry.show()
	else:
		$Player_1_Win.hide()
		$Player_2_Win.show()
		$Player_1_Cry.show()
		$Player_2_Cry.hide()
		
func _input(event):
	if event is InputEventKey:
		if event.scancode in [KEY_ENTER, KEY_SPACE]:
			get_tree().change_scene("res://Main.tscn")
