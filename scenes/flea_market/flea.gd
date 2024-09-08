extends CharacterBody2D

var direction
const SPEED = 10
const GRAVITY = -400.0

func _physics_process(delta):

	velocity = Vector2(position.x, position.y * SPEED - GRAVITY)
	move_and_slide()
	
	
	
