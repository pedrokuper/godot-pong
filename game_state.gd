extends Node

var player_scores = {
	'p1': 0,
	'p2': 0
}

func set_player_score(player): 
	player_scores[player] += 1

func reset_scores(): 
	player_scores['p1'] = 0
	player_scores['p2'] = 0
