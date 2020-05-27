extends Control

export var winning_score = 3

onready var score_player_1 = 0
onready var score_player_2 = 0

func _ready():
	for goal in get_tree().get_nodes_in_group("goal"):
		goal.connect("goal_scored", self, "on_goal_scored", [goal.player])
	update_score_display()

func on_goal_scored(player):
	match player:
		1:
			score_player_2 += 1
		2:
			score_player_1 += 1
	update_score_display()

func update_score_display():
	$Player_1_Score.text = "%d/%d" % [score_player_1, winning_score]
	$Player_2_Score.text = "%d/%d" % [score_player_2, winning_score]
