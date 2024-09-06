extends CharacterBody2D

const PLAYER_MOVEMENT_SPEED = 300
var is_paused: bool = false
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	#if Input.is_action_pressed("up"):
		#position.y -= PLAYER_MOVEMENT_SPEED * delta
		
	#if Input.is_action_pressed("down"):
		#position.y += PLAYER_MOVEMENT_SPEED * delta
		
	if Input.is_action_pressed("left") and !is_paused:
		position.x -= PLAYER_MOVEMENT_SPEED * delta

	if Input.is_action_pressed("right") and !is_paused:
		position.x += PLAYER_MOVEMENT_SPEED * delta

func player():
	pass
