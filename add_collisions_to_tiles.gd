tool
extends EditorScript

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	pass

func _run():
	print("run")
	var node_2d = get_scene().get_node(".")	
	for child in node_2d.get_children():
		print("name: " + child.get_name())
		
		var collision_shape_2d = CollisionShape2D.new()
		var shape = RectangleShape2D.new()
		shape.set_extents(Vector2(32,32))
		collision_shape_2d.set_shape(shape)
		
		var area_2d = Area2D.new()
		area_2d.set_scale(Vector2(0.25,0.25))
		area_2d.add_child(collision_shape_2d)
		child.add_child(area_2d)
		area_2d.set_owner(get_scene())
		collision_shape_2d.set_owner(get_scene())
		pass