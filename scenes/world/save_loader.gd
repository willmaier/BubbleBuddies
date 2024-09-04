extends Node
class_name PlayerState

static var player_save_file_path = "user://player_state"
static var player_save_file_name = "player_state_save.tres"

static var playerLoadData = PlayerResource.new()
# Called when the node enters the scene tree for the first time.

static func verify_save_directory():
	if not DirAccess.dir_exists_absolute(player_save_file_path):
		DirAccess.make_dir_absolute(player_save_file_path)
		
static func swap_player_item(item):
	playerLoadData.swap_player_item(item)
	
static func load_player_data():
	playerLoadData = ResourceLoader.load(player_save_file_path +"/"+ player_save_file_name).duplicate(true)

static func save_player_data():
	ResourceSaver.save(playerLoadData, player_save_file_path +"/"+ player_save_file_name)

static func get_player_data():
	return playerLoadData
	
static func can_access():
	return DirAccess.dir_exists_absolute(player_save_file_path)
