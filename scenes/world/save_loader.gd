extends Node
class_name PlayerState

static var player_save_file_path = "user://player_state"
static var player_save_file_name = "player_state_save.tres"

static var path = player_save_file_path +"/"+ player_save_file_name

static var playerLoadData = PlayerResource.new()
# Called when the node enters the scene tree for the first time.

static func load_or_create():
	#If the directory and file exists, will attempt to load the player state
	if  DirAccess.dir_exists_absolute(player_save_file_path) and FileAccess.file_exists(path):
		load_player_data()
		return get_player_data()
	
	#If the directory exists, but no file, will initialise the file with the default state
	elif DirAccess.dir_exists_absolute(player_save_file_path) and not FileAccess.file_exists(path):
		save_player_data()
		return get_player_data()
	
	#If no directory or file exists,will initialise the directory and file with the default state
	elif not DirAccess.dir_exists_absolute(player_save_file_path):
		DirAccess.make_dir_absolute(player_save_file_path)
		save_player_data()
		return get_player_data()
		
static func write_state(state):
	playerLoadData = state
	
static func swap_player_item(item):
	playerLoadData.swap_player_item(item)
	
static func load_player_data():
	playerLoadData = ResourceLoader.load(path).duplicate(true)

static func save_player_data():
		ResourceSaver.save(playerLoadData, path)

static func get_player_data():
	return playerLoadData
	
static func can_access():
	return DirAccess.dir_exists_absolute(player_save_file_path)
