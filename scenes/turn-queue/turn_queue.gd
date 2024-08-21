extends Node2D

class_name TurnQueue

var active_character = ""
	
func initialize():
	active_character = get_child(0)
	
func player_turn():
	pass
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
