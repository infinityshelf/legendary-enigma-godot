extends KinematicBody2D

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

var health = 0
var xp = 0
var strength = 0 setget set_strength
var intelligence = 0
var dexterity = 0

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	pass
	
func set_strength(value):
	strength = value
	if strength == 0:
		queue_free() #dead!
