extends Node2D

@onready var player = $OverworldPlayer
var index: int = 0
var moving: bool = false

func _ready():
	player.position = $"Markers/1".position
	index = 1

func _process(_delta):
	if Input.is_action_just_pressed("left") and !moving:
		if index == 0:
			moving = true
			index = 1
			#tween from 0 to 1
			var tween = get_tree().create_tween()
			tween.tween_property($OverworldPlayer, "position", $"Markers/1".position, 1)
			await tween.finished
			moving = false
			

		elif index == 1:
			moving = true
			index = 2
			var tween = get_tree().create_tween()
			tween.tween_property($OverworldPlayer, "position", $"Markers/2".position, 1)
			await tween.finished
			moving = false

	
	if Input.is_action_just_pressed("right") and !moving:
		if index == 1:
			moving = true
			index = 0
			var tween = get_tree().create_tween()
			tween.tween_property($OverworldPlayer, "position", $"Markers/0".position, 1)
			await tween.finished
			moving = false

		if index == 2:
			moving = true
			index = 1
			var tween = get_tree().create_tween()
			tween.tween_property($OverworldPlayer, "position", $"Markers/1".position, 1)
			await tween.finished
			moving = false
	
	if Input.is_action_just_pressed("up") and !moving:
		if index == 1:
			moving = true
			index = 3
			var tween = get_tree().create_tween()
			tween.tween_property($OverworldPlayer, "position", $"Markers/3".position, 1)
			await tween.finished
			moving = false

	if Input.is_action_just_pressed("down") and !moving:
		if index == 3:
			moving = true
			index = 1
			var tween = get_tree().create_tween()
			tween.tween_property($OverworldPlayer, "position", $"Markers/1".position, 1)
			await tween.finished
			moving = false
	
	if Input.is_action_just_pressed("talk"):
		if index == 0:
			get_tree().change_scene_to_file("res://scenes/garage.tscn")
		if index == 2:
			get_tree().change_scene_to_file("res://scenes/world/shop.tscn")
		if index == 3:
			get_tree().change_scene_to_file("res://scenes/battle/battle.tscn")
