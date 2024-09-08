extends Node2D

func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_static_body_2d_child_entered_tree(node):
	print("Player")


func _on_overworld_pressed():
	get_tree().change_scene_to_file("res://scenes/world/overworld.tscn")
