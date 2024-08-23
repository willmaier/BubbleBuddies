extends Control

var health_label : Label
#@export var max_health: Label
var fuel_label: Label
#@export var max_fuel: Label

func _ready():
	pass
	health_label = $GridContainer/CurrentHP
	#max_health = $GridContainer/MaxHP
	fuel_label = $GridContainer/CurrentFuel
	#max_fuel = $GridContainer/MaxFuel
	updateUI(Player.player_health, Player.player_fuel)

func updateUI(health, fuel):
	print("updating UI...")
	#print("UI should say " , Player.player_health)
	health_label.text = str(health)
	#max_health.text = str(Player.player_max_health)
	fuel_label.text = str(fuel)
	#max_fuel.text = str(Player.player_max_fuel)
