extends Node2D

@onready var hp_text = $PlayerUI/HP
@onready var health_bar = $PlayerUI/Health
@onready var fuel_text = $PlayerUI/Fuel2
@onready var fuel_bar = $PlayerUI/Fuel

@export var max_health: int = 100

var health: int = 100:
	set(value):
		health = value
		updateUI()

func take_damage(value):
	health -= value


func updateUI():
	hp_text = str(health)
	health_bar.value = health 

func _on_enemy_group_next_player():
	pass # show it is the player's turn
