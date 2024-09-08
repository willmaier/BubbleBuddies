extends CharacterBody2D

const SPEED = 10
const GRAVITY = 3500.0

func _ready():
	$JumpTimer.start()

func _physics_process(delta):
	velocity.y += GRAVITY * delta
	move_and_slide()
	
func jump():
	velocity.y = -1500.0
	
func _on_timer_timeout():
	jump()
