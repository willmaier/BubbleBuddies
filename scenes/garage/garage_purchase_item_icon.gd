extends Sprite2D


func _on_garage_purchase_item_signal(item):
	texture = item["image"]


func _on_garage_clear_purchase_item_signal():
	texture = null
