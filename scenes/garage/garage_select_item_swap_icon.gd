extends Sprite2D


func _on_garage_selected_item_signal(item):
	texture = item["image"]
