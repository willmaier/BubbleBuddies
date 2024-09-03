extends Node2D

@export var _player_resource : PlayerResource

@onready var hp_text = $PlayerUI/HP
@onready var health_bar = $PlayerUI/Health
@onready var fuel_text = $PlayerUI/Fuel2
@onready var fuel_bar = $PlayerUI/Fuel

@export var max_health: int = 100

signal target_chosen(target)

@export var is_weak: bool = false
@export var is_strong: bool = false
@export var is_burning: bool = false
@export var is_frozen: bool = false


var health: int = 100:
	set(value):
		health = value
		updateUI()

func take_damage(value):
	health -= value

func heal(value):
	health += value

func updateUI():
	hp_text.text = str(health)
	health_bar.value = health 

func _on_enemy_group_next_player():
	pass # show it is the player's turn

func _on_click_area_input_event(viewport, event, shape_idx):
	if Input.is_mouse_button_pressed(MOUSE_BUTTON_LEFT) and Globals.is_targeting:
		target_chosen.emit(self)
		Globals.character_chosen(self)
		Globals.is_targeting = false

func player_chosen():
	return self
			
