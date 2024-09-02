extends RichTextLabel

func _on_garage_purchase_item_signal(item):
	text = item.name.capitalize()
