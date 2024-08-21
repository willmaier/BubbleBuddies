extends Node

class DialogGraph:
	pass

class NpcCharacterDialogNode:
	#var total_levels: Array[int] = [1,2,3]
	#var previous_levels: Array[int] = []
	#var current_level = -1
	#var last_dialogue_timeline = ""
	#var current_dialogue_timeline = ""
	var npc_name = ""
	
class LevelNode:
	pass
	
	
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

var level_one_npcs = {
	"cthulu": {},
	"mr_grim":{},
}
