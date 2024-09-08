extends Node2D

var go_to_garage: bool = false
var go_to_fight: bool = false

func _process(_delta):
	if Input.is_action_just_pressed("interact") and go_to_garage:
		print("GOING TO GARAGE")
		get_tree().change_scene_to_file("res://scenes/garage.tscn")
	
	if Input.is_action_just_pressed("interact") and go_to_fight:
		get_tree().change_scene_to_file("res://scenes/combat/combat.tscn")


func _on_garage_area_body_entered(body):
	if (body.name == "Player"):
		print("ready to go to garage")
		go_to_garage = true
		print(go_to_garage)

func _on_garage_area_body_exited(body):
	if (body.name == "Player"):
		go_to_garage = false

func _on_battle_area_body_entered(body):
	if (body.name == "Player"):
		go_to_fight = true

func _on_battle_area_body_exited(body):
	if (body.name == "Player"):
		go_to_fight = false
