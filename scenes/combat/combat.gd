extends Node2D

# signals
signal player_attacked(damage)
signal enemy_attacked(damage)

var player: Node2D
var enemies: Array[Node2D]
var active_character

func _ready():
	for i in get_tree().get_nodes_in_group("Enemies"):
		enemies.append(i)

func _on_combat_menu_player_attack(damage, fuel):
	print("Player attacks for " , damage, ". It costs ", fuel)
	Player.player_fuel -= fuel
	PlayerUI.updateUI(Player.player_health, Player.player_fuel)
	enemy_attacked.emit(damage)

func _on_enemy_fighter_enemy_attack(damage):
	print("Enemy attacks for ", damage)
	player_attacked.emit(damage)
