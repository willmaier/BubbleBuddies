extends Node2D

var stall_count = 3
var flea_position = Vector2(256, 300)

#@onready var flea = preload("res://scenes/flea_market/flea.tscn")
# Called when the node enters the scene tree for the first time.
func _ready():
	pass
	#for f in range(3):
		#var new_flea = flea.instantiate()
		#new_flea.position.x = flea_position.x
		#new_flea.position.y = flea_position.y
		#add_child(new_flea)
		#flea_position.x += 256
		#print(flea_position.x)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_static_body_2d_child_entered_tree(node):
	print("Player")


func _on_overworld_pressed():
	get_tree().change_scene_to_file("res://scenes/world/overworld.tscn")
