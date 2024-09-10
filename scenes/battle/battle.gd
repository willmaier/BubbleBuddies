extends Node2D

func _process(_delta):
	if Input.is_action_just_pressed("esc"):
		$PauseMenu.show()

func _on_ability_button_change_turn():
	Globals.player_turn = false
	print("it is enemy turn now")
	
	for enemy in $EnemyGroup.get_children():
		if (is_instance_valid(enemy)):
			enemy.enemy_target()
			# replace with the timer below with the ability animation of the enemy
			await get_tree().create_timer(3).timeout
	#await enemy to end turn
	print("player's turn!")
	
	if ($EnemyGroup.get_child_count() == 0):
		get_tree().change_scene_to_file("res://scenes/world/credits.tscn")
	Globals.player_turn = true
	#enemy turn
	#send signal to EnemyGroup and go through each child's ability?
