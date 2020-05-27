extends Node2D

export var show_duration = 3

func _ready():
	get_tree().create_timer(show_duration).connect("timeout", self, "queue_free")
