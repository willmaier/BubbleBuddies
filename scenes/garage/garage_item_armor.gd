extends RichTextLabel


func _on_garage_purchase_item_signal(item):
	text = str(item.armor)


func _on_garage_clear_purchase_item_signal():
	text = ""
