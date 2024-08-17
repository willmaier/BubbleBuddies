extends Node2D

# this will change based on gear
@export var player_health: int = 10
@export var player_max_health: int = 10
@export var player_fuel: int = 10
@export var player_max_fuel: int = 10


func _ready():
	if (Globals.player_turn):
		print("players turn")

func playerDeath():
	print("player has died :()")
