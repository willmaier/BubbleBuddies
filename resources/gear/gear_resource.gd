extends Resource
class_name GearResource

# Databases are useful, but hey dictionaries work sometimes
@export_group("Gear")

#HELMETS
@export var helmet_dictionary = {
	"base":{
		"name": "base",
		"category" :"helmets",
		"image": preload("res://assets/Art/GEAR/HELMET/helmet_base.png"),
		"attack": 2,
		"defense": 4,
		"armor": 1,
		"ability": preload("res://custom_resources/abilities/peck.tres")
	},
	"halloween":{
		"name": "halloween",
		"category" :"helmets",
		"image": preload("res://assets/Art/GEAR/HELMET/helmet_halloween.png"),
	   	"attack": 2,
		"defense": 4,
		"armor": 1,
		"ability": "res://custom_resources/abilities/eat_seed.tres"
	},
	"metal":{
		"name": "metal",
		"category" :"helmets",
		"image": preload("res://assets/Art/GEAR/HELMET/helmet_metal.png"),
		"attack": 1,
		"defense": 5,
		"armor": 5,
		"ability": "res://custom_resources/abilities/peck.tres"
	},
	"plushie":{
		"name": "plushie",
		"category" :"helmets",
		"image": preload("res://assets/Art/GEAR/HELMET/helmet_plushie.png"),
		"attack": 5,
 		"defense": 2,
		"armor": 2,
		"ability": "res://custom_resources/abilities/swipe.tres"
	},
	"pot": {
		"name": "pot",
		"category" :"helmets",
		"image": preload("res://assets/Art/GEAR/HELMET/helmet_pot.png"),
		"attack": 3,
		"defense": 4,
		"armor": 5,
		"ability": "res://custom_resources/abilities/buff.tres"
	},
	"snowman": {
		"name": "snowman",
		"category" :"helmets",
		"image": preload("res://assets/Art/GEAR/HELMET/helmet_snowman.png"),
		"attack": 5,
		"defense": -1,
	   	"armor": -1,
		"ability": "res://custom_resources/abilities/taunt.tres"
	}   
}

@export var helmet_names = ["base","halloween","metal","plushie","pot","snowman"]

#TORSOS
@export var torso_dictionary = {
	"base":{
		"name": "base",
		"category" :"torsos",
		"image": preload("res://assets/Art/GEAR/TORSO/torso_base.png"),
		"attack": 2,
		"defense": 4,
		"armor": 1,
		"ability": preload("res://custom_resources/abilities/peck.tres")
	},
	"bread":{
		"name": "bread",
		"category" :"torsos",
		"image": preload("res://assets/Art/GEAR/TORSO/torso_bread.png"),
	   	"attack": 2,
		"defense": 4,
		"armor": 1,
		"ability": "res://custom_resources/abilities/eat_seed.tres"
	},
	"cardboard":{
		"name": "cardboard",
		"category" :"torsos",
		"image": preload("res://assets/Art/GEAR/TORSO/torso_cardboard.png"),
		"attack": 1,
		"defense": 5,
		"armor": 5,
		"ability": "res://custom_resources/abilities/swipe.tres"
	},
	"crystal":{
		"name": "crystal",
		"category" :"torsos",
		"image": preload("res://assets/Art/GEAR/TORSO/torso_crystal.png"),
		"attack": 5,
 		"defense": 2,
		"armor": 2,
		"ability": "res://custom_resources/abilities/buff.tres"
	},
	"metal": {
		"name": "metal",
		"category" :"torsos",
		"image": preload("res://assets/Art/GEAR/TORSO/torso_metal.png"),
		"attack": 3,
		"defense": 4,
		"armor": 5,
		"ability": "res://custom_resources/abilities/swipe.tres"
	},
	"trash": {
		"name": "trash",
		"category" :"torsos",
		"image": preload("res://assets/Art/GEAR/TORSO/torso_trash.png"),
		"attack": 5,
		"defense": -1,
	   	"armor": -1,
		"ability": "res://custom_resources/abilities/taunt.tres"
	}   
}

@export var torso_names = ["base","bread","cardboard","crystal", "metal","trash"]

#WINGS
@export var wing_dictionary = {
	"base":{
		"name": "base",
		"category" :"wings",
		"image": preload("res://assets/Art/GEAR/WING/wing_base.png"),
		"attack": 2,
		"defense": 4,
		"armor": 1,
		"ability": preload("res://custom_resources/abilities/swipe.tres")
	},
	"buffalo":{
		"name": "buffalo",
		"category" :"wings",
		"image": preload("res://assets/Art/GEAR/WING/wing_buffalo.png"),
	   	"attack": 2,
		"defense": 4,
		"armor": 1,
		"ability": "res://custom_resources/abilities/buff.tres"
	},
	"crayon":{
		"name": "crayon",
		"category" :"wings",
		"image": preload("res://assets/Art/GEAR/WING/wing_crayon.png"),
		"attack": 1,
		"defense": 3,
		"armor": 1,
		"ability": "res://custom_resources/abilities/swipe.tres"
	},
	"icepop":{
		"name": "icepop",
		"category" :"wings",
		"image": preload("res://assets/Art/GEAR/WING/wing_icepop.png"),
		"attack": 5,
 		"defense": 2,
		"armor": 2,
		"ability": "res://custom_resources/abilities/buff.tres"
	},
	"leaf": {
		"name": "leaf",
		"category" :"wings",
		"image": preload("res://assets/Art/GEAR/WING/wing_leaf.png"),
		"attack": 3,
		"defense": 4,
		"armor": 5,
		"ability": "res://custom_resources/abilities/taunt.tres"
	},
	"metal": {
		"name": "metal",
		"category" :"wings",
		"image": preload("res://assets/Art/GEAR/WING/wing_metal.png"),
		"attack": 5,
		"defense": -1,
	   	"armor": -1,
		"ability": "res://custom_resources/abilities/peck.tres"
	}   
}

@export var wing_names = ["base", "buffalo", "crayon", "icepop", "leaf", "metal"]

@export var foot_dictionary = {
	"base":{
		"name": "base",
		"category" :"feet",
		"image": preload("res://assets/Art/GEAR/FOOT/foot_base.png"),
		"attack": 2,
		"defense": 4,
		"armor": 1,
		"ability": preload("res://custom_resources/abilities/eat_seed.tres")
	},
	"bone":{
		"name": "bone",
		"category": "feet",
		"image": preload("res://assets/Art/GEAR/FOOT/foot_bone.png"),
	   	"attack": 2,
		"defense": 4,
		"armor": 1,
		"ability": "res://custom_resources/abilities/eat_seed.tres"
	},
	"candy_cane":{
		"name": "candy_cane",
		"category": "feet",
		"image": preload("res://assets/Art/GEAR/FOOT/foot_candycane.png"),
		"attack": 1,
		"defense": 3,
		"armor": 1,
		"ability": "res://custom_resources/abilities/taunt.tres"
	},
	"metal":{
		"name": "metal",
		"category": "feet",
		"image": preload("res://assets/Art/GEAR/FOOT/foot_metal.png"),
		"attack": 5,
 		"defense": 2,
		"armor": 2,
		"ability": "res://custom_resources/abilities/peck.tres"
	},
	"pvc": {
		"name": "pvc",
		"category": "feet",
		"image": preload("res://assets/Art/GEAR/FOOT/foot_pbc.png"),
		"attack": 3,
		"defense": 4,
		"armor": 5,
		"ability": "res://custom_resources/abilities/swipe.tres"
	},
	"sticksnstones":{
		"name": "sticksnstones",
		"category": "feet",
		"image": preload("res://assets/Art/GEAR/FOOT/foot_sticksnstones.png"),
		"attack": 5,
		"defense": -1,
	   	"armor": -1,
		"ability": "res://custom_resources/abilities/taunt.tres"
	}
}

@export var foot_names = ["base","bone","candy_cane","metal","pvc","sticksnstones"]

@export var helmets_array = [
	{
		"name": "base",
		"category": "helmets",
		"image": preload("res://assets/Art/GEAR/HELMET/helmet_base.png"),
		"attack": 2,
		"defense": 4,
		"armor": 1,
		"ability":""
	},
	{	
		"name": "halloween",
		"category": "helmets",
		"image": preload("res://assets/Art/GEAR/HELMET/helmet_halloween.png"),
	   	"attack": 2,
		"defense": 4,
		"armor": 1,
		"ability": "res://custom_resources/abilities/eat_seed.tres"
	},
	{
		"name": "metal",
		"category": "helmets",
		"image": preload("res://assets/Art/GEAR/HELMET/helmet_metal.png"),
		"attack": 1,
		"defense": 5,
		"armor": 5,
		"ability": "res://custom_resources/abilities/peck.tres"
	},
	{
		"name": "plushie",
		"category": "helmets",
		"image": preload("res://assets/Art/GEAR/HELMET/helmet_plushie.png"),
		"attack": 5,
 		"defense": 2,
		"armor": 2,
		"ability": "res://custom_resources/abilities/swipe.tres"
	},
	{
		"name": "pot",
		"category": "helmets",
		"image": preload("res://assets/Art/GEAR/HELMET/helmet_pot.png"),
		"attack": 3,
		"defense": 4,
		"armor": 5,
		"ability": "res://custom_resources/abilities/buff.tres"
	},
	{
		"name": "snowman",
		"category": "helmets",
		"image": preload("res://assets/Art/GEAR/HELMET/helmet_snowman.png"),
		"attack": 5,
		"defense": -1,
	   	"armor": -1,
		"ability": "res://custom_resources/abilities/taunt.tres"
	}
]

@export var torso_array = [
	{
		"name": "base",
		"category": "torsos",
		"image": preload("res://assets/Art/GEAR/TORSO/torso_base.png"),
		"attack": 2,
		"defense": 4,
		"armor": 1,
		"ability": ""
	},
	{
		"name":"bread",
		"category": "torsos",
		"image": preload("res://assets/Art/GEAR/TORSO/torso_bread.png"),
	   	"attack": 2,
		"defense": 4,
		"armor": 1,
		"ability": "res://custom_resources/abilities/eat_seed.tres"
	},
	{ 	"name": "cardboard",
		"category": "torsos",
		"image": preload("res://assets/Art/GEAR/TORSO/torso_cardboard.png"),
		"attack": 1,
		"defense": 5,
		"armor": 5,
		"ability": "res://custom_resources/abilities/swipe.tres"
	},
	{
		"name": "crystal",
		"category": "torsos",
		"image": preload("res://assets/Art/GEAR/TORSO/torso_crystal.png"),
		"attack": 5,
 		"defense": 2,
		"armor": 2,
		"ability": "res://custom_resources/abilities/buff.tres"
	},
	{
		"name": "metal",
		"category": "torsos", 
		"image": preload("res://assets/Art/GEAR/TORSO/torso_metal.png"),
		"attack": 3,
		"defense": 4,
		"armor": 5,
		"ability": "res://custom_resources/abilities/swipe.tres"
	},
	{
		"name": "trash",
		"category": "torsos",
		"image": preload("res://assets/Art/GEAR/TORSO/torso_trash.png"),
		"attack": 5,
		"defense": -1,
	   	"armor": -1,
		"ability": "res://custom_resources/abilities/taunt.tres"
	} 
]

@export var wings_array = [
	{
		"name": "base",
		"category": "wings",
		"image": preload("res://assets/Art/GEAR/WING/wing_base.png"),
		"attack": 2,
		"defense": 4,
		"armor": 1,
		"ability": ""
	},
	{
		"name": "buffalo",
		"category": "wings",
		"image": preload("res://assets/Art/GEAR/WING/wing_buffalo.png"),
	   	"attack": 2,
		"defense": 4,
		"armor": 1,
		"ability": "res://custom_resources/abilities/buff.tres"
	},
	{
		"name": "crayon",
		"category": "wings",
		"image": preload("res://assets/Art/GEAR/WING/wing_crayon.png"),
		"attack": 1,
		"defense": 3,
		"armor": 1,
		"ability": "res://custom_resources/abilities/swipe.tres"
	},
	{
		"name": "icepop",
		"category": "wings",
		"image": preload("res://assets/Art/GEAR/WING/wing_icepop.png"),
		"attack": 5,
 		"defense": 2,
		"armor": 2,
		"ability": "res://custom_resources/abilities/buff.tres"
	},
	{
		"name" : "leaf",
		"category": "wings", 
		"image": preload("res://assets/Art/GEAR/WING/wing_leaf.png"),
		"attack": 3,
		"defense": 4,
		"armor": 5,
		"ability": "res://custom_resources/abilities/taunt.tres"
	},
	{
		"name" : "metal",
		"category": "wings",
		"image": preload("res://assets/Art/GEAR/WING/wing_metal.png"),
		"attack": 5,
		"defense": -1,
	   	"armor": -1,
		"ability": "res://custom_resources/abilities/peck.tres"
	}   
]

@export var foot_array = [
	{	"name" : "base",
		"category": "feet",
		"image": preload("res://assets/Art/GEAR/FOOT/foot_base.png"),
		"attack": 2,
		"defense": 4,
		"armor": 1,
		"ability": ""
	},
	{	"name": "bone",
		"category": "feet",
		"image": preload("res://assets/Art/GEAR/FOOT/foot_bone.png"),
	   	"attack": 2,
		"defense": 4,
		"armor": 1,
		"ability": "res://custom_resources/abilities/eat_seed.tres"
	},
	{
		"name" : "candy_cane",
		"category": "feet",
		"image": preload("res://assets/Art/GEAR/FOOT/foot_candycane.png"),
		"attack": 1,
		"defense": 3,
		"armor": 1,
		"ability": "res://custom_resources/abilities/taunt.tres"
	},
	{
		"name" : "metal",
		"category": "feet",
		"image": preload("res://assets/Art/GEAR/FOOT/foot_metal.png"),
		"attack": 5,
 		"defense": 2,
		"armor": 2,
		"ability": "res://custom_resources/abilities/peck.tres"
	},
	{
		"name": "pvc",
		"category": "feet",
		"image": preload("res://assets/Art/GEAR/FOOT/foot_pbc.png"),
		"attack": 3,
		"defense": 4,
		"armor": 5,
		"ability": "res://custom_resources/abilities/swipe.tres"
	},
	{
		"name": "sticksnstones",
		"category": "feet",
		"image": preload("res://assets/Art/GEAR/FOOT/foot_sticksnstones.png"),
		"attack": 5,
		"defense": -1,
	   	"armor": -1,
		"ability": "res://custom_resources/abilities/taunt.tres"
	}
]
