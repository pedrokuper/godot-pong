extends Node2D

var ball: PackedScene = preload("res://scenes/ball.tscn")




func _ready():
	ball.instantiate()
	call_deferred("add_child", ball)


func _on_p_1_back_body_entered(body):
	GameState.set_player_score('p2')
	body.queue_free()
	


func _on_p_2_back_body_entered(body):
	GameState.set_player_score('p1')
	body.queue_free()
	
