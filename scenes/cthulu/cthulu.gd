extends Node2D

var player_chat_active = false
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	if Input.is_action_just_pressed("talk"):
		Dialogic.start("cthulu_scene_one")


func _on_chat_detection_body_entered(body):
	print(body)
	#pass # Replace with function body.
	if body.has_method("player"):
		print("player can chat")
		player_chat_active = true


func _on_chat_detection_body_exited(body):
	print(body)
	#pass # Replace with function body.
	if body.has_method("player"):
		print("goodbye player")
		player_chat_active = false
