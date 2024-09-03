extends RichTextLabel


func _on_garage_selected_item_signal(item):
	text = item.name.capitalize()
	
