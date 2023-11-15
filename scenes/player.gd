extends CharacterBody2D

var speed: int = 400

func _physics_process(delta):
	if $".".name == 'Player1':
		player_movement(delta, 'p1_up', 'p1_down')
	else:
		player_movement(delta, 'p2_up', 'p2_down')
	move_and_slide()
	

func player_movement(delta, input_up, input_down):
	if Input.is_action_pressed(input_up):
		position += Vector2(0,-1) * delta * speed
	if Input.is_action_pressed(input_down):
		position += Vector2(0,1) * delta * speed
