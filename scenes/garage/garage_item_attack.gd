extends RichTextLabel

func _on_garage_selected_item_signal(item):
	text = str(item.attack)
