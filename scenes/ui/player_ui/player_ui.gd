extends Control

var health: Label
var max_health: Label
var fuel: Label
var max_fuel: Label

func _ready():
	health = $GridContainer/CurrentHP
	max_health = $GridContainer/MaxHP
	fuel = $GridContainer/CurrentFuel
	max_fuel = $GridContainer/MaxFuel

# Called when the node enters the scene tree for the first time.
func updateUI():
	health.text = str(Player.player_health)
	max_health.text = str(Player.player_max_health)
	max_health.text = str(Player.player_fuel)
	max_fuel.text = str(Player.player_max_fuel)
