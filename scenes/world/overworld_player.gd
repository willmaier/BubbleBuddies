extends CharacterBody2D

var pos: int = 1

func _process(delta):
	if (Input.is_action_just_pressed("left") and pos != 0):
		# replace with tween
		position.x -= 400
		pos -= 1

	if (Input.is_action_just_pressed("right") and pos != 2):
		# replace with tween
		position.x += 400
		pos += 1
