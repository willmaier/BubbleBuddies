extends Node2D

var enemies: Array = []
var action_queue: Array = []
var is_acting: bool = false
var index: int = 0

signal next_player

@onready var abilities = $"../CanvasLayer/Abilities"


func _ready():
	enemies = get_children()
	for i in enemies.size():
		enemies[i].position = Vector2(i*200,0)
	
	show_abilities()

func _process(_delta):
	if not abilities.visible:
		if Input.is_action_just_pressed("left"):
			if index > 0:
				index -= 1
				switch_focus(index, index+1)

		if Input.is_action_just_pressed("right"):
			if index < enemies.size() - 1:
				index += 1
				switch_focus(index, index - 1)

		if Input.is_action_just_pressed("up"):
			#attacks
			action_queue.push_back(index)
			emit_signal("next_player")
		
	if action_queue.size() == enemies.size() and not is_acting:
		is_acting = true
		_action(action_queue)

func _action(stack):
	for i in stack:
		enemies[i].take_damage(1)
		await get_tree().create_timer(1).timeout
	action_queue.clear()
	is_acting = false
	show_abilities()

func switch_focus(x, y):
	enemies[x].focus()
	enemies[y].unfocus()

func show_abilities():
	abilities.show()
	abilities.find_child("Ability 3").grab_focus()

func reset_focus():
	index = 0
	for enemy in enemies:
		enemy.unfocus()

func start_choosing():
	reset_focus()
	enemies[0].focus

func _on_ability_1_pressed():
	abilities.hide()
	start_choosing()
