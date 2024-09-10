extends Node2D

#@export var _player_resource : PlayerResource

@onready var _gear_resource = GearResource.new()
@onready var _player_load_data = PlayerState.load_or_create()

@onready var equipped_gear
@export var abilities: Array[Ability] = []

@onready var hp_text = $PlayerUI/HP
@onready var health_bar = $PlayerUI/Health
@onready var fuel_text = $PlayerUI/Fuel2
@onready var fuel_bar = $PlayerUI/Fuel

@export var max_health: int = 20

signal target_chosen(target)

@export var is_weak: bool = false
@export var is_strong: bool = false
@export var is_burning: bool = false
@export var is_frozen: bool = false


@onready var helmet = $Helmet
@onready var torso = $Torso
@onready var legs = $Legs
@onready var wing = $Wing


var health: int = 20:
	set(value):
		health = value
		updateUI()

func _ready():
	broadcast()
	var index: int = 0
	for i in equipped_gear:
		#print(i)
		abilities[index] = i.ability
		index+=1
		#print(i.ability.name)
	print(abilities)
	
func take_damage(value):
	health -= value
	print("Player's health is now: ", health)

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
			
func change_player_images():
	for item in _player_load_data.equipped_gear:
		if item["category"] == "helmets":
			helmet.texture = item["image"]
			
		if item["category"] == "torsos":
			torso.texture = item["image"]
			
		if item["category"] == "wings":
			wing.texture = item["image"]
			
		if item["category"] == "feet":
			legs.texture = item["image"]
			
			
func broadcast():
	_player_load_data._equip_active_gear(_gear_resource)
	_player_load_data._apply_buffs()
	equipped_gear = _player_load_data.equipped_gear
	change_player_images()
