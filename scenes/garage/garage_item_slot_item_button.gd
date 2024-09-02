extends Button

signal equip_slot_item

func _on_pressed():
	emit_signal("equip_slot_item")
