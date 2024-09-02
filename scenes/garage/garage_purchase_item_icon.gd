extends Sprite2D


func _on_garage_purchase_item_signal(item):
	texture = item["image"]
