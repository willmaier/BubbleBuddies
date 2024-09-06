extends Node2D

#RESOURCES
#@export var _gear_resource : GearResource
#@export var _player_resource : PlayerResource

@onready var _gear_resource = GearResource.new()

@onready var player = $GarageUICanvas/TabContainer/Parts/MechDisplayArea/Player

#DYNAMIC SCENE/COMPONENTS
@onready var purchase_slot = preload("res://scenes/garage/garage_item_slot.tscn")
@onready var select_slot = preload("res://scenes/garage/garage_select_item_slot.tscn")

#UI-COMPONENTS
@onready var garage_ui = $GarageUICanvas
@onready var inventoy_grid_container = $GarageUICanvas/TabContainer/Parts/PartsRect/ItemGridContainer
@onready var purchase_grid_container = $GarageUICanvas/TabContainer/Store/PurchaseRect/ItemGridContainer

#STORE
@onready var gear_store = [
	_gear_resource.helmets_array,
	_gear_resource.foot_array,
	_gear_resource.torso_array,
	_gear_resource.wings_array
]

enum ItemSelectionType {HELMET,FEET,TORSOS,WINGS}

@onready var playLoadData = PlayerState.load_or_create()

@onready var player_inventory = [
	playLoadData.helmet_inventory,
	playLoadData.feet_inventory,
	playLoadData.torso_inventory,
	playLoadData.wing_inventory
]

#SIGNALS
signal purchase_item_signal(item)
signal clear_purchase_item_signal

signal selected_item_signal(item)

var purchase_item = {}
var selected_item = {}

func _ready():
	pass

func _input(event):
	if event.is_action_pressed("workshop_menu"):
		garage_ui.visible = !garage_ui.visible
		#get_tree().paused = !get_tree().paused

func _on_battle_pressed():
	get_tree().change_scene_to_file("res://scenes/world/overworld.tscn")

func clear_grid_container(container):
	while container.get_child_count() > 0:
		var child = container.get_child(0)
		container.remove_child(child)
		child.queue_free()

func allocate_slot_item(item, slot_type, container):
	var slot = slot_type.instantiate()
	slot.set_item(item)
	container.add_child(slot)
	
func _on_purchase_item_list_item_clicked(index, _at_position, _mouse_button_index):
	clear_grid_container(purchase_grid_container)
	gear_store[index].map(func(item):
		allocate_slot_item(item, purchase_slot, purchase_grid_container)
	)
	
func _on_garage_item_list_item_clicked(index, at_position, mouse_button_index):
	clear_grid_container(inventoy_grid_container)
	if player_inventory[index] != []:
		player_inventory[index].map(func(item):
			allocate_slot_item(item, select_slot, inventoy_grid_container)
		)
	
func equip_purchase_item(item):
	purchase_item = item
	emit_signal("purchase_item_signal", purchase_item)

func equip_selected_item(item):
	selected_item = item
	emit_signal("selected_item_signal", item)
	
func _on_purchase_pressed():
	if purchase_item["category"] == "helmets":
		player_inventory[ItemSelectionType.HELMET].append(purchase_item)
		emit_signal("clear_purchase_item_signal")
		purchase_item = {}
		
	elif purchase_item["category"] == "feet":
		player_inventory[ItemSelectionType.FEET].append(purchase_item)
		emit_signal("clear_purchase_item_signal")
		purchase_item = {}
		
	elif purchase_item["category"] == "torsos":
		player_inventory[ItemSelectionType.TORSOS].append(purchase_item)
		emit_signal("clear_purchase_item_signal")
		purchase_item = {}
		
	elif purchase_item["category"] == "wings":
		player_inventory[ItemSelectionType.WINGS].append(purchase_item)
		emit_signal("clear_purchase_item_signal")
		purchase_item = {}
		
	PlayerState.write_state(playLoadData)
	PlayerState.save_player_data()
	
func swap_gear(item):
	var parts = player.get_children()
	if item["category"] == "torsos":
		parts[0].texture = item["image"]
		
	if item["category"] == "helmets":
		parts[1].texture = item["image"]

	if item["category"] == "wings":
		parts[2].texture = item["image"]

	if item["category"] == "feet":
		parts[3].texture = item["image"]
	
	playLoadData.swap_player_item(item)


func _on_swapper_button_pressed():
	swap_gear(selected_item)

func _on_save_pressed():
	PlayerState.write_state(playLoadData)
	PlayerState.save_player_data()
