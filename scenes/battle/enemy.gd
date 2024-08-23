extends Node2D

@onready var hp_text = $GridContainer/HP
#@onready var progress_bar = $GridContainer/ProgressBar
@onready var _focus = $Focus


@export var max_health: int = 10

var health: int = 10:
	set(value):
		health = value
		updateUI()

func take_damage(value):
	health -= value
	print(health)

func updateUI():
	#progress_bar.value = health
	hp_text.text = str(health) 

func focus():
	_focus.show()

func unfocus():
	_focus.hide()
