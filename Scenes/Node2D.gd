tool
extends Node2D

func _ready():
	pass

func _on_Control_pressed():
	var spr = get_node("Sprite")
	var tex = preload("res://Textures/DungeonTexture.tex")
	
	for i in range(tex.get_width() / 16):
		for j in range(tex.get_height() / 16):
			var dupe = spr.duplicate(true)
			dupe.set_region_rect(Rect2(i * 16, j * 16, 16,16))
			dupe.set_global_pos(dupe.get_global_pos() + Vector2(i * 16, j * 16))
			add_child(dupe)
