extends Button

signal select_slot_item

func _on_pressed():
	emit_signal("select_slot_item")

