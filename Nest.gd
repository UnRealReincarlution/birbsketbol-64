extends Node2D

export var player = 1

signal goal_scored

func _on_Goal_Area_body_entered(body):
	if body.is_in_group("ball"):
		emit_signal("goal_scored")
