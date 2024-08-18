extends Control

var health_label : Label
#@export var max_health: Label
#@export var fuel: Label
#@export var max_fuel: Label

func _ready():
	pass
	health_label = $GridContainer/CurrentHP
	#max_health = $GridContainer/MaxHP
	#fuel = $GridContainer/CurrentFuel
	#max_fuel = $GridContainer/MaxFuel
	updateUI(Player.player_health)



func updateUI(health):
	print("updating UI...")
	print("UI should say " , Player.player_health)
	health_label.text = str(health)
	#max_health.text = str(Player.player_max_health)
	#max_health.text = str(Player.player_fuel)
	#max_fuel.text = str(Player.player_max_fuel)
