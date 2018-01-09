tool
extends EditorScript

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	pass
	
func _run():
	_do_it()
	
func _do_it():
	var spr = 	get_scene().get_node("Sprite")
	var tex = preload("res://Textures/DungeonTexture.tex")
	
	for i in range(tex.get_width() / 16):
		for j in range(tex.get_height() / 16):
			var dupe = spr.duplicate()
			dupe.set_region_rect(Rect2(i * 16, j * 16, 16,16))
			dupe.set_global_pos(dupe.get_global_pos() + Vector2(i * 16, j * 16))
			dupe.set_name("tile_" + String(i) + "_" + String(j))
			get_scene().add_child(dupe)
			dupe.set_owner(get_scene())
	
