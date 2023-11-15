extends Node2D

var player_scored = false
var player = ""

signal player_pos

func _on_p_1_back_body_entered(_body):
	GameState.set_player_score('p2')
	$Ball.position = Vector2(640, 360)
	get_tree().call_group('BallGroup', 'stop_ball')
	player_scored = true
	player = 'p2'
	

func _on_p_2_back_body_entered(_body):
	GameState.set_player_score('p1')
	$Ball.position = Vector2(640, 360)
	get_tree().call_group('BallGroup', 'stop_ball')
	player_scored = true
	player = 'p1'


func _on_timer_timeout():
	if player_scored:
		get_tree().call_group('BallGroup', 'restart_ball', player)
		player_scored = false
		player = ''
