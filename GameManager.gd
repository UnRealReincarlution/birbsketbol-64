extends Control

onready var score_player_1 = 0
onready var score_player_2 = 0

func _ready():
	for goal in get_tree().get_nodes_in_group("goal"):
		goal.connect("goal_scored", self, "on_goal_scored", [goal.player])

func on_goal_scored(player):
	match player:
		1:
			score_player_2 += 1
		2:
			score_player_1 += 1
	print("Player 1 score: ", score_player_1)
	print("Player 2 score: ", score_player_2)
