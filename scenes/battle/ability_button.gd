extends Button

@export var ability: Ability
var active: bool = false

@onready var targets: Array[Node2D] = []

signal change_turn

func _ready():
	await $".."._ready()
	if ability.type == 0:
		icon = preload("res://assets/textures/Red-Attack_button.png")
	if ability.type == 1:
		icon = preload("res://assets/textures/Yellow-Heal_button.png")
	if ability.type == 2:
		icon = preload("res://assets/textures/Blue-Skill_button.png")
		
	tooltip_text = ability.name+"\n"+"Target(s): "+str(ability.target_text)+"\n"+"Damage: "+str(ability.value)+"\n"+ability.desc
	

func _on_pressed():
	if (ability.target == 0):
		targets.assign(get_tree().get_nodes_in_group("Player"))
		for target in targets:
			$"..".do_ability(target, ability.type, ability.value)
		#print(targets)

	if (ability.target == 1 and !Globals.is_targeting):
		print("Choose target...")
		Globals.is_targeting = true
		# check for player or enemy
		await Globals.choose_character
		print(Globals.return_character())
		if (Globals.return_character().is_in_group("Player")):
			#await $"../../../Player".target_chosen
			targets.append($"../../../Player".player_chosen())
		# only do one of these ^v
		if (Globals.return_character().is_in_group("Enemy")):
			#await $"../../../EnemyGroup".target_chosen
			targets.append($"../../../EnemyGroup"._on_target_chosen())
		print(targets)
		for target in targets:
			# send this to Abilities (HBoxContainer)
			$"..".do_ability(target, ability.type, ability.value)
			#target.take_damage(ability.value)
			print(target.health)
		# pick single enemy

	if (ability.target == 2):
		print("target: all enemies")
		for enemy in get_tree().get_nodes_in_group("Enemy"):
			targets.append(enemy)
		for target in targets:
			$"..".do_ability(target, ability.type, ability.value)

	if (ability.target == 3):
		
		print("target: everyone")
		targets.assign(get_tree().get_nodes_in_group("Player"))
		for enemy in get_tree().get_nodes_in_group("Enemy"):
			targets.append(enemy)
		print(targets)
		for target in targets:
			# if ability.type == ATTACK
			target.take_damage(ability.value)
			# if ability.type == SKILL
			# target.skill()

	targets.clear()
	if (Globals.player_turn):
		change_turn.emit()
