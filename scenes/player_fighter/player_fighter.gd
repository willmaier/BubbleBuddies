extends Node2D

# this will change based on gear
@export var player_health: int = 10
@export var player_max_health: int = 10
@export var player_fuel: int = 10
@export var player_max_fuel: int = 10

var player_ui: Control

func _ready():
	player_health = 10
	#player_ui = PlayerUI
	if (Globals.player_turn):
		print("players turn")
		print("Player health: ", player_health)
	

func turn():
	print("Player made their turn")

func playerDeath():
	print("player has died :()")

func _on_combat_player_attacked(damage):
	print("Player has been attacked for ", damage, " damage!")
	player_health -= damage
	print("Player now has ", player_health, " health")
	PlayerUI.updateUI(player_health, player_fuel)
	
	if player_health <= 0:
		playerDeath()
