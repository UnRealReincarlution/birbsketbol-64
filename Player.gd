extends RigidBody2D

export var launch_power: float = 500

enum ControlSchemes { MOUSE, WASD, ULDR }
export (ControlSchemes) var control = ControlSchemes.WASD

func launch(direction):
	apply_central_impulse(direction * launch_power)

func mouse_control(event):
	if event is InputEventMouseButton:
		if event.button_index == BUTTON_LEFT:
			launch((event.position - global_position).normalized())

func wasd_control(event):
	if event is InputEventKey:
		if event.pressed:
			match event.scancode:
				KEY_W:
					launch(Vector2.UP)
				KEY_A:
					launch(Vector2.LEFT)
				KEY_S:
					launch(Vector2.DOWN)
				KEY_D:
					launch(Vector2.RIGHT)

func uldr_control(event):
	if event is InputEventKey:
		if event.pressed:
			match event.scancode:
				KEY_UP:
					launch(Vector2.UP)
				KEY_LEFT:
					launch(Vector2.LEFT)
				KEY_DOWN:
					launch(Vector2.DOWN)
				KEY_RIGHT:
					launch(Vector2.RIGHT)

func _input(event):
	match control:
		ControlSchemes.MOUSE:
			mouse_control(event)
		ControlSchemes.WASD:
			wasd_control(event)
		ControlSchemes.ULDR:
			uldr_control(event)
