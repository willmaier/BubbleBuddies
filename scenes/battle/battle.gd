extends Node2D

func _on_ability_button_change_turn():
	Globals.player_turn = false
	print("it is enemy turn now")
	#enemy turn
	#send signal to EnemyGroup and go through each child's ability?
