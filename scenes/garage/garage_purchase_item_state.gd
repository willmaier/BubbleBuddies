extends RichTextLabel

@onready var display_timer = $DisplayTimer

func _on_display_timer_timeout():
	text = ""
	visible = !visible


func _on_garage_already_purchased_or_empty(warning):
	display_timer.start()
	text = warning
	visible = !visible
