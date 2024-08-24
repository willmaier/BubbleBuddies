extends HBoxContainer

#    TYPE
# 0 -> ATTACK
# 1 -> HEAL
# 2 -> SKILL
func do_ability(target, type, value):
	print("player is attacking: ", target, " for: ", value)
	Globals.is_targeting = false
	if (type == 0):
		target.take_damage(value)

	if (type == 1):
		print("heal")
		target.heal(value)
	
	# CHANGE TO ENEMY TURN
