extends Node2D

var at_shoes: bool = false
var at_shirts: bool = false
var at_hats: bool = false

func _process(_delta):
		if Input.is_action_just_pressed("talk") and at_shoes and !$Player.is_paused:
			$Player.is_paused = true
			print("buy shoes")
			Dialogic.start("flea")
			get_viewport().set_input_as_handled()
			await Dialogic.timeline_ended
			$Player.is_paused = false
		if Input.is_action_just_pressed("talk") and at_shirts and !$Player.is_paused:
			print("buy shirts")
			Dialogic.start("flea")
			get_viewport().set_input_as_handled()
			await Dialogic.timeline_ended
			$Player.is_paused = false
		if Input.is_action_just_pressed("talk") and at_hats and !$Player.is_paused:
			print("buy hats")
			Dialogic.start("flea")
			get_viewport().set_input_as_handled()
			await Dialogic.timeline_ended
			$Player.is_paused = false


func _on_shoe_flea_body_entered(body):
	at_shoes = true
	$ShoePointer.visible = true

func _on_shoe_flea_body_exited(body):
	at_shoes = false
	$ShoePointer.visible = false

func _on_shoe_flea_2_body_entered(body):
	at_shirts = true
	$ShirtPointer.visible = true

func _on_shoe_flea_2_body_exited(body):
	at_shirts = false
	$ShirtPointer.visible = false

func _on_shoe_flea_3_body_entered(body):
	at_hats = true
	$HatPointer.visible = true

func _on_shoe_flea_3_body_exited(body):
	at_hats = false
	$HatPointer.visible = false


func _on_overworld_pressed():
	get_tree().change_scene_to_file("res://scenes/world/overworld.tscn")
