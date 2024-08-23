extends Node2D

signal enemy_attack(damage)

@export var health: int = 10
@export var max_health: int = 10
@export var attack_damage: int = 1

var health_text: Label
var max_health_text: Label

func _ready():
	health_text = $EnemyUI/CurrentHealth
	max_health_text = $EnemyUI/MaxHealth

func _process(_delta):
	if (!Globals.player_turn):
		_attack(attack_damage)
		Globals.player_turn = true

func turn():
	print("Enemy has made their turn")

func _updateUI():
	health_text.text = str(health)
	max_health_text.text = str(max_health)

func _attack(damage):
	#print("enemy has attacked!")
	enemy_attack.emit(damage)

func _on_combat_enemy_attacked(damage):
	health -= damage
	health_text.text = str(health)
