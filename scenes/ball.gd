extends CharacterBody2D


var speed: int = 100

func _ready():
	randomize()
	self.velocity.x  = [-1,1].pick_random()
	self.velocity.y  = [-0.75,0.75].pick_random()

func _physics_process(delta):
	var collision_obj = move_and_collide(self.velocity * speed * delta)
	if collision_obj:
		self.velocity = self.velocity.bounce(collision_obj.get_normal())
