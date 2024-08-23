class_name Ability
extends Resource

enum Type {ATTACK, SKILL}
enum Target {SELF, SINGLE_ENEMY, ALL_ENEMIES, EVERYONE}

@export_group("Ability Details")
@export var name: String
@export var type: Type
@export var target: Target
@export var value: int

func is_single_targeted() -> bool:
	return target == Target.SINGLE_ENEMY 
