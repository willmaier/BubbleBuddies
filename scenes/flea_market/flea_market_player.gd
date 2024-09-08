extends CharacterBody2D

var direction
const SPEED = 300.0

func _physics_process(delta):
	direction = Input.get_vector("left", "right","up","down")
	velocity = Vector2(direction.x * SPEED, direction.y * SPEED)
	move_and_slide()
	
