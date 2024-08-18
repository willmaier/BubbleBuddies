extends Node2D

# signals
signal player_attacked(damage)
signal enemy_attacked(damage)

var player: Node2D
var enemies: Array[Node2D]

func _ready():
	for i in $Enemies.get_child_count():
		enemies.append($Enemies.get_child(i))

func _on_combat_menu_player_attack(damage):
	print("Player attacks for " , damage)
	enemy_attacked.emit(damage)


func _on_enemy_fighter_enemy_attack(damage):
	print("Enemy attacks for ", damage)
	player_attacked.emit(damage)
