extends HBoxContainer

#    TYPE
# 0 -> ATTACK
# 1 -> HEAL
# 2 -> SKILL

func do_ability(target, type, value):
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
				
	# CHANGE TO ENEMY TURN
