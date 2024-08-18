extends Node2D

var player: Node2D
var enemies: Array[Node2D]

func _ready():
	for i in $Enemies.get_child_count():
		enemies.append($Enemies.get_child(i))

func _on_combat_menu_player_attack(damage):
	print("Enemy has been attacked for " , damage)
