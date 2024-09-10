extends Node2D

#RESOURCES
#@export var _gear_resource : GearResource
#@export var _player_resource : PlayerResource

@onready var _gear_resource = GearResource.new()
@onready var _play_load_data = PlayerState.load_or_create()

#DYNAMIC SCENE/COMPONENTS
@onready var purchase_slot = preload("res://scenes/garage/garage_item_slot.tscn")
@onready var select_slot = preload("res://scenes/garage/garage_select_item_slot.tscn")

#UI-COMPONENTS
@onready var garage_ui = $GarageUICanvas

@onready var inventoy_grid_container = $GarageUICanvas/TabContainer/Parts/PartsRect/ItemGridContainer
@onready var purchase_grid_container = $GarageUICanvas/TabContainer/Store/PurchaseRect/ItemGridContainer

#VARS
@onready var gear_store = [
	_gear_resource.helmets_array,
	_gear_resource.foot_array,
	_gear_resource.torso_array,
	_gear_resource.wings_array
]

enum ItemSelectionType {HELMET,FEET,TORSOS,WINGS}

@onready var player_inventory = [
	_play_load_data.helmet_inventory,
	_play_load_data.feet_inventory,
	_play_load_data.torso_inventory,
	_play_load_data.wing_inventory
]

@onready var player = $GarageUICanvas/TabContainer/Parts/MechDisplayArea/Player


#SIGNALS
signal purchase_item_signal(item)
signal clear_purchase_item_signal
signal already_purchased_or_empty(warning)

signal selected_item_signal(item)
signal empty_selected_item(warning)

var purchase_item = {}
var selected_item = {}

#ENVIRONMENT VARIABLES
var with_mechanic: bool = false
var at_bench: bool = false

func _process(_delta):
	if Input.is_action_just_pressed("talk") and at_bench:
		print("OPEN GARAGE MENU")
		$Player.is_paused = true
		garage_ui.visible = true
		
	if Input.is_action_just_pressed("esc") and at_bench:
		$Player.is_paused = false
		garage_ui.visible = false
	
	if Input.is_action_just_pressed("dialogic_default_action") and with_mechanic and !$Player.is_paused:
		$Player.is_paused = true
		print("talk to mechanic!")
		# replace the await below with Dialogic
		if ($Player.is_paused):
			pass
			Dialogic.start("first-timeline")
			get_viewport().set_input_as_handled()
			#$Player.is_paused = false
	await Dialogic.timeline_ended
	$Player.is_paused = false
	#print($Player.is_paused)
		#if Dialogic.VAR.done_talking == true:
			#$Player.is_paused = false

func after_dialogue(timeline_name):
	print("free to go")

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
	
func is_item_purchased(category, purchased_item):
	var found_items = player_inventory[category].filter(func(item): 
		if item["name"] == purchased_item["name"]:
			return true
		else:
			return false
	)
	
	return found_items.is_empty()
	
func purchase(category):
	return func(item):
		if !is_item_purchased(category, item):
			already_purchased_or_empty.emit("Already Purchased")
			clear_purchase_item_signal.emit()
		else:
			player_inventory[category].append(item)
			clear_purchase_item_signal.emit()
			
var purchase_helmet = purchase(ItemSelectionType.HELMET)
var purchase_feet = purchase(ItemSelectionType.FEET)
var purchase_torsos = purchase(ItemSelectionType.TORSOS)
var purchase_wings = purchase(ItemSelectionType.WINGS)
	
func _on_purchase_pressed():
	if purchase_item == {}:
		already_purchased_or_empty.emit("Can't purchase an empty item")
	else:
		if purchase_item["category"] == "helmets":
			purchase_helmet.call(purchase_item)
		
		elif purchase_item["category"] == "feet":
			purchase_feet.call(purchase_item)
		
		elif purchase_item["category"] == "torsos":
			purchase_torsos.call(purchase_item)
			
		elif purchase_item["category"] == "wings":
			purchase_wings.call(purchase_item)
			
		else:
			already_purchased_or_empty.emit("Can't purchase an empty item")
		
		PlayerState.write_state(_play_load_data)
		PlayerState.save_player_data()
		purchase_item = {}
	

func _on_mechanic_body_entered(body):
	$MechanicPointer.visible = true
	with_mechanic = true


func _on_mechanic_body_exited(body):
	$MechanicPointer.visible = false 
	with_mechanic = false

func _on_bench_body_entered(body):
	$BenchPointer.visible = true
	at_bench = true
	print($Player.is_paused)
	print(at_bench)

func _on_bench_body_exited(body):
	$BenchPointer.visible = false
	at_bench = false

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
	
	_play_load_data.swap_player_item(item)


func _on_swapper_button_pressed():
	if selected_item == {}:
		empty_selected_item.emit("No item selected")
	else:
		swap_gear(selected_item)


func _on_save_pressed():
	PlayerState.write_state(_play_load_data)
	PlayerState.save_player_data()
