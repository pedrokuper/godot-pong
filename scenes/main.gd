extends Node2D


func _on_p_1_back_body_entered(body):
	GameState.set_player_score('p2')
	$Ball.position = Vector2(640, 360)
	get_tree().call_group('BallGroup', 'stop_ball')
	
	


func _on_p_2_back_body_entered(body):
	GameState.set_player_score('p1')
	$Ball.position = Vector2(640, 360)
	get_tree().call_group('BallGroup', 'stop_ball')
	


func _on_timer_timeout():
	get_tree().call_group('BallGroup', 'restart_ball')
