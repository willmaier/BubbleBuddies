extends Control

signal set_slot_texture(new_texture)

@onready var item_name
@onready var item_armor
@onready var item_defence
@onready var item_attack
@onready var item_image
@onready var item_category

# Called when the node enters the scene tree for the first time.
func _ready():
	pass
	
func set_item(item):
	item_name = item["name"]
	item_armor = item["armor"]
	item_defence = item["defense"]
	item_image = item["image"]
	item_attack = item["attack"]
	item_category = item["category"]

	emit_signal("set_slot_texture", item["image"])


func _on_slot_button_equip_slot_item():
	
	var purchase_item = get_tree().get_nodes_in_group("GarageRoot")[0]

	var item = {
		"name": item_name,
		"armor": item_armor,
		"defense": item_defence,
		"attack": item_attack,
		"image": item_image,
		"category": item_category
	}
	purchase_item.equip_purchase_item(item)
