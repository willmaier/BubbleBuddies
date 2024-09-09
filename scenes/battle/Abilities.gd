extends HBoxContainer


#    TYPE
# 0 -> ATTACK
# 1 -> HEAL
# 2 -> SKILL

func _ready():
	for button in get_children():
		button.ability = $"../../Player".abilities[button.get_index()]
		print(button.ability.name)
		button.text = button.ability.name

func do_ability(target, type, value):
	if Globals.player_turn:
		print("player is attacking: ", target, " for: ", value)
		Globals.is_targeting = false
		if (type == 0):
			#check for attacker buffs and defender debuffs, status effects
			if (target.is_weak):
				print("target is weak, taking 20% more damage!")
				target.take_damage(value+2)
				return
			target.take_damage(value)

		if (type == 1):
			print("heal")
			target.heal(value)
		
		if (type == 2):
			match value:
				0:
					print("applying weak effect!")
					target.is_weak = true

				1:
					print("applying strong effect!")
					target.is_strong = true
					
				2: 
					print("applying burn effect!")
					target.is_burning = true
				
				3: 
					print("applying freeze effect!")
					target.is_frozen = true
		# CHANGE TO ENEMY TURN
	#Globals.player_turn = false


func _on_overworld_pressed():
	get_tree().change_scene_to_file("res://scenes/world/overworld.tscn")
