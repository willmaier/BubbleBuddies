extends Control

signal player_attack(damage)

var move1_damage: int = 1

func _on_move_1_button_pressed():
	if (Globals.player_turn):
		# load in move 1 from armor
		print("Move 1")
		player_attack.emit(move1_damage)
		Globals.enemyTurn()
	
