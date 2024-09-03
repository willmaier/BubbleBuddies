extends Resource
class_name PlayerResource

const INIT_HEALTH = 100
const INIT_FUEL = 100
const INIT_ARMOR := 0
const INIT_ATTACK := 2
const INIT_DEFENCE := 3
const INIT_ARMOR_DAMAGE := 0
const INIT_EXP := 0
const INIT_COIN := 0
const INIT_COMBINED_HEALTH_BONUSES = 0
const INIT_COMBINED_DEFENCE_BONUSES = 0
const INIT_HELMET_INVENTORY := []
const INIT_TORSO_INVENTORY := []
const INIT_FEET_INVENTORY := []
const INIT_WING_INVENTORY := []
const INIT_ITEM_INVENTORY := []

#PLAYER
@export_group("Player")
@export var health := INIT_HEALTH
@export var fuel := INIT_FUEL
@export var armor := INIT_ARMOR
@export var attack := INIT_ATTACK
@export var defence := INIT_DEFENCE
@export var armor_damage := INIT_ARMOR_DAMAGE
@export var xp := INIT_EXP
@export var coin := INIT_COIN
@export var combined_health_bonuses := 0
@export var combined_defence_bonuses := 0
@export var combined_attack_bonuses := 0

#INVENTORY
@export var helmet_inventory := INIT_HELMET_INVENTORY
@export var torso_inventory := INIT_TORSO_INVENTORY
@export var feet_inventory := INIT_FEET_INVENTORY
@export var wing_inventory := INIT_WING_INVENTORY
@export var item_inventory := INIT_ITEM_INVENTORY

#EQUIPPED
@export var helmet := "base"
@export var torso := "base"
@export var wing := "base"
@export var foot := "base"

var garbage_bin

var equipped_gear = []

#OUTGOING_SIGNALS
signal apply_defense_buff(new_defense)
signal apply_attack_buf(new_attack)

func _init_player_combat():
	health = INIT_HEALTH
	fuel = INIT_FUEL
	
func _take_damage(damage_taken):
	health -= damage_taken
	
func _equip_active_gear(gear_dictionary):
	equipped_gear = []
	equipped_gear.append(gear_dictionary.helmet_dictionary[helmet])
	equipped_gear.append(gear_dictionary.torso_dictionary[torso])
	equipped_gear.append(gear_dictionary.wing_dictionary[wing])
	equipped_gear.append(gear_dictionary.foot_dictionary[foot])
	
func _apply_buffs():
	calculate_attack_buffs()
	calculate_defense_buffs()
	
func calculate_attack_buffs():
	for item in equipped_gear:
		combined_attack_bonuses += item.attack
	attack += combined_attack_bonuses
		
func calculate_defense_buffs():
	for item in equipped_gear:
		combined_defence_bonuses += item.defense
	defence += combined_defence_bonuses

#NB gear_resource must be swapped with the players inventory
func swap_player_item(new_item):
	if (new_item["category"] == "helmets"):
		helmet = new_item["name"]
	elif (new_item["category"] == "torsos"):
		torso = new_item["name"]
	elif(new_item["category"] == "wings"):
		wing = new_item["name"]
	elif(new_item["category"] == "feet"):
		foot = new_item["name"]
	else:
		print("Error occurred")
