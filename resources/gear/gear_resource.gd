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
		"peck" : 0,
		"swipe": 2,
		"taunt": 0
	},
	"halloween":{
		"name": "halloween",
		"category" :"helmets",
		"image": preload("res://assets/Art/GEAR/HELMET/helmet_halloween.png"),
	   	"attack": 2,
		"defense": 4,
		"armor": 1,
		"peck" : 0,
		"swipe": 0,
		"taunt": 4
	},
	"metal":{
		"name": "metal",
		"category" :"helmets",
		"image": preload("res://assets/Art/GEAR/HELMET/helmet_metal.png"),
		"attack": 1,
		"defense": 5,
		"armor": 5,
		"peck" : 5,
		"swipe": 0,
		"taunt": 0
	},
	"plushie":{
		"name": "plushie",
		"category" :"helmets",
		"image": preload("res://assets/Art/GEAR/HELMET/helmet_plushie.png"),
		"attack": 5,
 		"defense": 2,
		"armor": 2,
		"peck" : 0,
		"swipe": 5,
		"taunt": 0
	},
	"pot": {
		"name": "pot",
		"category" :"helmets",
		"image": preload("res://assets/Art/GEAR/HELMET/helmet_pot.png"),
		"attack": 3,
		"defense": 4,
		"armor": 5,
		"peck" : 0,
		"swipe": 5,
		"taunt": 0
	},
	"snowman": {
		"name": "snowman",
		"category" :"helmets",
		"image": preload("res://assets/Art/GEAR/HELMET/helmet_snowman.png"),
		"attack": 5,
		"defense": -1,
	   	"armor": -1,
		"peck" : 0,
		"swipe": 0,
		"taunt": 4
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
		"peck" : 0,
		"swipe": 0,
		"taunt": 0
	},
	"bread":{
		"name": "bread",
		"category" :"torsos",
		"image": preload("res://assets/Art/GEAR/TORSO/torso_bread.png"),
	   	"attack": 2,
		"defense": 4,
		"armor": 1,
		"peck" : 0,
		"swipe": 2,
		"taunt": 0
	},
	"cardboard":{
		"name": "cardboard",
		"category" :"torsos",
		"image": preload("res://assets/Art/GEAR/TORSO/torso_cardboard.png"),
		"attack": 1,
		"defense": 5,
		"armor": 5,
		"peck" : 3,
		"swipe": 0,
		"taunt": 0
	},
	"crystal":{
		"name": "crystal",
		"category" :"torsos",
		"image": preload("res://assets/Art/GEAR/TORSO/torso_crystal.png"),
		"attack": 5,
 		"defense": 2,
		"armor": 2,
		"peck" : 0,
		"swipe": 4,
		"taunt": 0
	},
	"metal": {
		"name": "metal",
		"category" :"torsos",
		"image": preload("res://assets/Art/GEAR/TORSO/torso_metal.png"),
		"attack": 3,
		"defense": 4,
		"armor": 5,
		"peck" : 0,
		"swipe": 5,
		"taunt": 0
	},
	"trash": {
		"name": "trash",
		"category" :"torsos",
		"image": preload("res://assets/Art/GEAR/TORSO/torso_trash.png"),
		"attack": 5,
		"defense": -1,
	   	"armor": -1,
		"peck" : 0,
		"swipe": 0,
		"taunt": 5
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
		"peck" : 0,
		"swipe": 0,
		"taunt": 0
	},
	"buffalo":{
		"name": "buffalo",
		"category" :"wings",
		"image": preload("res://assets/Art/GEAR/WING/wing_buffalo.png"),
	   	"attack": 2,
		"defense": 4,
		"armor": 1,
		"peck" : 0,
		"swipe": 0,
		"taunt": 3
	},
	"crayon":{
		"name": "crayon",
		"category" :"wings",
		"image": preload("res://assets/Art/GEAR/WING/wing_crayon.png"),
		"attack": 1,
		"defense": 3,
		"armor": 1,
		"peck" : 0,
		"swipe": 4,
		"taunt": 0,
	},
	"icepop":{
		"name": "icepop",
		"category" :"wings",
		"image": preload("res://assets/Art/GEAR/WING/wing_icepop.png"),
		"attack": 5,
 		"defense": 2,
		"armor": 2,
		"peck" : 0,
		"swipe": 5,
		"taunt": 0
	},
	"leaf": {
		"name": "leaf",
		"category" :"wings",
		"image": preload("res://assets/Art/GEAR/WING/wing_leaf.png"),
		"attack": 3,
		"defense": 4,
		"armor": 5,
		"peck" : 0,
		"swipe": 0,
		"taunt": 5
	},
	"metal": {
		"name": "metal",
		"category" :"wings",
		"image": preload("res://assets/Art/GEAR/WING/wing_metal.png"),
		"attack": 5,
		"defense": -1,
	   	"armor": -1,
		"peck" : 0,
		"swipe": 5,
		"taunt": 0
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
		"armor": 1
	},
	"bone":{
		"name": "bone",
		"category": "feet",
		"image": preload("res://assets/Art/GEAR/FOOT/foot_bone.png"),
	   	"attack": 2,
		"defense": 4,
		"armor": 1
	},
	"candy_cane":{
		"name": "candy_cane",
		"category": "feet",
		"image": preload("res://assets/Art/GEAR/FOOT/foot_candycane.png"),
		"attack": 1,
		"defense": 3,
		"armor": 1
	},
	"metal":{
		"name": "metal",
		"category": "feet",
		"image": preload("res://assets/Art/GEAR/FOOT/foot_metal.png"),
		"attack": 5,
 		"defense": 2,
		"armor": 2
	},
	"pvc": {
		"name": "pvc",
		"category": "feet",
		"image": preload("res://assets/Art/GEAR/FOOT/foot_pbc.png"),
		"attack": 3,
		"defense": 4,
		"armor": 5
	},
	"sticksnstones":{
		"name": "sticksnstones",
		"category": "feet",
		"image": preload("res://assets/Art/GEAR/FOOT/foot_sticksnstones.png"),
		"attack": 5,
		"defense": -1,
	   	"armor": -1,
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
	},
	{	
		"name": "halloween",
		"category": "helmets",
		"image": preload("res://assets/Art/GEAR/HELMET/helmet_halloween.png"),
	   	"attack": 2,
		"defense": 4,
		"armor": 1
	},
	{
		"name": "metal",
		"category": "helmets",
		"image": preload("res://assets/Art/GEAR/HELMET/helmet_metal.png"),
		"attack": 1,
		"defense": 5,
		"armor": 5
	},
	{
		"name": "plushie",
		"category": "helmets",
		"image": preload("res://assets/Art/GEAR/HELMET/helmet_plushie.png"),
		"attack": 5,
 		"defense": 2,
		"armor": 2
	},
	{
		"name": "pot",
		"category": "helmets",
		"image": preload("res://assets/Art/GEAR/HELMET/helmet_pot.png"),
		"attack": 3,
		"defense": 4,
		"armor": 5
	},
	{
		"name": "snowman",
		"category": "helmets",
		"image": preload("res://assets/Art/GEAR/HELMET/helmet_snowman.png"),
		"attack": 5,
		"defense": -1,
	   	"armor": -1,
	}
]

@export var torso_array = [
	{
		"name": "base",
		"category": "torsos",
		"image": preload("res://assets/Art/GEAR/TORSO/torso_base.png"),
		"attack": 2,
		"defense": 4,
		"armor": 1
	},
	{
		"name":"bread",
		"category": "torsos",
		"image": preload("res://assets/Art/GEAR/TORSO/torso_bread.png"),
	   	"attack": 2,
		"defense": 4,
		"armor": 1
	},
	{ 	"name": "cardboard",
		"category": "torsos",
		"image": preload("res://assets/Art/GEAR/TORSO/torso_cardboard.png"),
		"attack": 1,
		"defense": 5,
		"armor": 5
	},
	{
		"name": "crystal",
		"category": "torsos",
		"image": preload("res://assets/Art/GEAR/TORSO/torso_crystal.png"),
		"attack": 5,
 		"defense": 2,
		"armor": 2
	},
	{
		"name": "metal",
		"category": "torsos", 
		"image": preload("res://assets/Art/GEAR/TORSO/torso_metal.png"),
		"attack": 3,
		"defense": 4,
		"armor": 5
	},
	{
		"name": "trash",
		"category": "torsos",
		"image": preload("res://assets/Art/GEAR/TORSO/torso_trash.png"),
		"attack": 5,
		"defense": -1,
	   	"armor": -1,
	} 
]

@export var wings_array = [
	{
		"name": "base",
		"category": "wings",
		"image": preload("res://assets/Art/GEAR/WING/wing_base.png"),
		"attack": 2,
		"defense": 4,
		"armor": 1
	},
	{
		"name": "buffalo",
		"category": "wings",
		"image": preload("res://assets/Art/GEAR/WING/wing_buffalo.png"),
	   	"attack": 2,
		"defense": 4,
		"armor": 1
	},
	{
		"name": "crayon",
		"category": "wings",
		"image": preload("res://assets/Art/GEAR/WING/wing_crayon.png"),
		"attack": 1,
		"defense": 3,
		"armor": 1
	},
	{
		"name": "icepop",
		"category": "wings",
		"image": preload("res://assets/Art/GEAR/WING/wing_icepop.png"),
		"attack": 5,
 		"defense": 2,
		"armor": 2
	},
	{
		"name" : "leaf",
		"category": "wings", 
		"image": preload("res://assets/Art/GEAR/WING/wing_leaf.png"),
		"attack": 3,
		"defense": 4,
		"armor": 5
	},
	{
		"name" : "metal",
		"category": "wings",
		"image": preload("res://assets/Art/GEAR/WING/wing_metal.png"),
		"attack": 5,
		"defense": -1,
	   	"armor": -1,
	}   
]

@export var foot_array = [
	{	"name" : "base",
		"category": "feet",
		"image": preload("res://assets/Art/GEAR/FOOT/foot_base.png"),
		"attack": 2,
		"defense": 4,
		"armor": 1
	},
	{	"name": "bone",
		"category": "feet",
		"image": preload("res://assets/Art/GEAR/FOOT/foot_bone.png"),
	   	"attack": 2,
		"defense": 4,
		"armor": 1
	},
	{
		"name" : "candy_cane",
		"category": "feet",
		"image": preload("res://assets/Art/GEAR/FOOT/foot_candycane.png"),
		"attack": 1,
		"defense": 3,
		"armor": 1
	},
	{
		"name" : "metal",
		"category": "feet",
		"image": preload("res://assets/Art/GEAR/FOOT/foot_metal.png"),
		"attack": 5,
 		"defense": 2,
		"armor": 2
	},
	{
		"name": "pvc",
		"category": "feet",
		"image": preload("res://assets/Art/GEAR/FOOT/foot_pbc.png"),
		"attack": 3,
		"defense": 4,
		"armor": 5
	},
	{
		"name": "sticksnstones",
		"category": "feet",
		"image": preload("res://assets/Art/GEAR/FOOT/foot_sticksnstones.png"),
		"attack": 5,
		"defense": -1,
	   	"armor": -1,
	}
]
