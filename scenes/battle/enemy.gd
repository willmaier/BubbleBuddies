extends Node2D

@onready var hp_text = $GridContainer/HP
#@onready var progress_bar = $GridContainer/ProgressBar
@onready var _focus = $Focus

signal target_chosen(target)

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


func _on_click_area_input_event(viewport, event, shape_idx):
	if Input.is_mouse_button_pressed(MOUSE_BUTTON_LEFT) and Globals.is_targeting:
		#print(Globals.is_targeting)
		# emit self to 
		target_chosen.emit(self)
		Globals.is_targeting = false

