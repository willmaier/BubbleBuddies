extends RichTextLabel

@onready var part_select_timer = $PartSelectTimer

func _on_garage_empty_selected_item(warning):
	part_select_timer.start()
	text = warning
	visible = !visible


func _on_part_select_timer_timeout():
	text = ""
	visible = !visible
