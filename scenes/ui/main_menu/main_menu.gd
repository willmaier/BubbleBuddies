extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	$VBoxContainer/Play.grab_focus()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_play_pressed():
	get_tree().change_scene_to_file("res://scenes/garage.tscn")


func _on_quit_pressed():
	get_tree().quit()


func _on_options_pressed():
	get_tree().change_scene_to_file("res://scenes/ui/options_menu/options_menu.tscn")
	#var options = load("res://scenes/ui/options_menu/options_menu.tscn").instance()
	#get_tree().currentprint(options)_scene.add_child(options)
