extends Node
class_name PlayerState

static var player_save_file_path = "user://player_state"
static var player_save_file_name = "player_state_save.tres"

static var path = player_save_file_path +"/"+ player_save_file_name

static var playerLoadData = PlayerResource.new()
# Called when the node enters the scene tree for the first time.

static func verify_save_directory():
	match DirAccess.dir_exists_absolute(player_save_file_path):
		true:
			return true
		false:
			return false
	#if DirAccess.dir_exists_absolute(player_save_file_path) and not FileAccess.file_exists(path):
		#save_player_data()
	#if DirAccess.dir_exists_absolute(player_save_file_path) and FileAccess.file_exists(path):
		#load_player_data()
	#else:
		#DirAccess.make_dir_absolute(player_save_file_path)
		#save_player_data()
		
static func verify_file_exists():
	match FileAccess.file_exists(path):
		true:
			return true
		false:
			return false
	
static func load_or_create():
	if  DirAccess.dir_exists_absolute(player_save_file_path) and FileAccess.file_exists(path):
		load_player_data()
		return get_player_data()
		
	if not DirAccess.dir_exists_absolute(player_save_file_path):
		DirAccess.make_dir_absolute(player_save_file_path)
		save_player_data()
		return get_player_data()
		
static func write_state(state):
	playerLoadData = state
	
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
