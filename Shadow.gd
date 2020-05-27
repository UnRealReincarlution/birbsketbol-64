extends Sprite

export (NodePath) var target_path
onready var target = get_node(target_path)

func _physics_process(delta):
	global_position.x = target.global_position.x
