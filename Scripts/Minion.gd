extends KinematicBody2D

onready var health = 100
onready var xp = 0
onready var strength = 0 setget set_strength
onready var intelligence = 0
onready var dexterity = 0
onready var move_speed = 30


func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	pass
	
func set_strength(value):
	strength = value
	if strength == 0:
		queue_free() #dead!
