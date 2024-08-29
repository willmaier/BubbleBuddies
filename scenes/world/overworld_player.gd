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
	
	if (Input.is_action_just_pressed("dialogic_default_action")):
		match pos:
			0:
				print("go to garage")
				get_tree().change_scene_to_file("res://scenes/garage.tscn")
			1:
				print("go to shop")
				
			2:
				print("go to battle")
				get_tree().change_scene_to_file("res://scenes/battle/battle.tscn")
