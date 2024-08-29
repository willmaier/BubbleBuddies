extends Node2D

@onready var hp_text = $GridContainer/HP
#@onready var progress_bar = $GridContainer/ProgressBar
@onready var _focus = $Focus

signal target_chosen(target)

@export var max_health: int = 10

@export var is_weak: bool = false
@export var is_strong: bool = false
@export var is_burning: bool = false
@export var is_frozen: bool = false

var health: int = 10:
	set(value):
		health = value
		updateUI()

func _process(_delta):
	if (is_weak):
		$Status/Weak.visible = true
	else:
		$Status/Weak.visible = false
	if (is_strong):
		$Status/Strong.visible = true
	else:
		$Status/Strong.visible = false
	if (is_burning):
		$Status/Burning.visible = true
	else:
		$Status/Burning.visible = false
	if (is_frozen):
		$Status/Frozen.visible = true
	else:
		$Status/Frozen.visible = false

func take_damage(value):
	health -= value
	$SFX/Hit1.play()
	print(health)

func heal(value):
	health += value

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
		unfocus()
		Globals.is_targeting = false

func _on_click_area_mouse_entered():
	if Globals.is_targeting:
		focus()

func _on_click_area_mouse_exited():
	if Globals.is_targeting:
		unfocus()
