extends Node

# signals
signal enemy_attack

# player variables
#var player_ui: Control

# fight scene variables
var player_turn: bool = true
var is_targeting: bool = false

func fightStart():
	#player_ui = PlayerUI
	pass

func enemyTurn():
	#enemy_attack.emit()
	player_turn = false
	print("enemy turn")

func attackEnemy(damage):
	pass
