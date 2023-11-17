extends CharacterBody2D

var speed: float = 600
var multiplier: int = 50

func _physics_process(delta):
	
	if $".".name == 'Player1':
		player_movement(delta, 'p1_up', 'p1_down')
		stop_player_movement('p1_up', 'p1_down')
	else:
		player_movement(delta, 'p2_up', 'p2_down')
		stop_player_movement( 'p2_up', 'p2_down')
	move_and_slide()

func player_movement(delta, input_up, input_down):
	if Input.is_action_pressed(input_up):
		print(velocity.y)
		velocity.y = -1 * speed * delta * multiplier
	if Input.is_action_pressed(input_down):
		print(velocity.y)
		velocity.y = 1 * speed * delta * multiplier
		
func stop_player_movement(input_up, input_down):
	if Input.is_action_just_released(input_up):
		velocity.y = 0
	if Input.is_action_just_released(input_down):
		velocity.y = 0
