extends Node

# signals
signal enemy_attack
signal choose_character

# player variables
#var player_ui: Control

# fight scene variables
var player_turn: bool = true
var is_targeting: bool = false
var chosen


func fightStart():
	#player_ui = PlayerUI
	pass

func enemyTurn():
	#enemy_attack.emit()
	player_turn = false
	print("enemy turn")

func attackEnemy(damage):
	pass

func character_chosen(character):
	chosen = character
	return_character()
	choose_character.emit()
	

func return_character():
	return chosen
	chosen = null
