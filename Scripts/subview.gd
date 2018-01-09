tool
extends Viewport

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	set_world_2d(get_tree().get_root().get_world_2d())
	pass
