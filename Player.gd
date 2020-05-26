extends RigidBody2D

export var launch_power: float = 500

func launch(direction):
	apply_central_impulse(direction * launch_power)

func _input(event):
	if event is InputEventMouseButton:
		if event.button_index == BUTTON_LEFT:
			launch((event.position - global_position).normalized())
