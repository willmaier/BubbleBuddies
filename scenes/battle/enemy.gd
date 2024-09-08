extends Node2D

@onready var player = get_tree().get_first_node_in_group("Player")
@onready var hp_text = $GridContainer/HP
#@onready var progress_bar = $GridContainer/ProgressBar
@onready var _focus = $Focus

signal target_chosen(target)

@export var move: Ability
var target: Node2D
var type: int
var value: int
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
	print(self, " now has: ",health)
	if (health <= 0):
		remove_child(self)
		queue_free()
		get_parent().recount()

func heal(value):
	health += value

func enemy_target():
	if (move.target == 0):
		target = self
		print("enemy is targeting itself")
	elif (move.target == 1):
		target = player
		print("enemy is targeting player")
	elif (move.target == 2):
		#target = get_parent().get_child(randi() get_parent().get_child_count())
		print("enemy is targeting its allies")
	elif (move.target == 3):
		#target = self
		print("enemy is targeting everyone")
	do_something(target)
	#print(self, " is targeting: ", player)

func do_something(target):
	if (move.type == 0):
		target.take_damage(move.value)
	
	

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
