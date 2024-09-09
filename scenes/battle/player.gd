extends Node2D

#@export var _player_resource : PlayerResource
#@export var _gear_resource : GearResource

@onready var _gear_resource = GearResource.new()

@onready var playerLoadData = PlayerState.load_or_create()

@onready var equipped_gear

@onready var hp_text = $PlayerUI/HP
@onready var health_bar = $PlayerUI/Health
@onready var fuel_text = $PlayerUI/Fuel2
@onready var fuel_bar = $PlayerUI/Fuel


@export var max_health: int = 20
@export var abilities: Array[Ability] = []

signal target_chosen(target)

@export var is_weak: bool = false
@export var is_strong: bool = false
@export var is_burning: bool = false
@export var is_frozen: bool = false


signal swap_helmet_texture(helmet)
signal swap_torso_texture(torso)
signal swap_leg_texture(leg)
signal swap_wing_texture(wing)


func _ready():
	broadcast()
	var index: int = 0
	for i in equipped_gear:
		abilities[index] = i.ability
		#print("The ability for the ", index, " ", i.name, " ",i.category, " is: ",i.ability)
		index+=1
		#print(i.ability.name)
	#print(abilities)
	
# var health: int = 100: Merge conflict

var health: int = 20:
	set(value):
		health = value
		updateUI()

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
	for item in playerLoadData.equipped_gear:
		if item["category"] == "helmets":
			emit_signal("swap_helmet_texture",item["image"])
		if item["category"] == "torsos":
			emit_signal("swap_torso_texture",item["image"])
		if item["category"] == "wings":
			emit_signal("swap_wing_texture",item["image"])
		if item["category"] == "feet":
			emit_signal("swap_leg_texture",item["image"])
			
func broadcast():
	playerLoadData._equip_active_gear(_gear_resource)
	playerLoadData._apply_buffs()
	equipped_gear = playerLoadData.equipped_gear
	change_player_images()
