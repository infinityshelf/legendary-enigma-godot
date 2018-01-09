extends ColorFrame

signal clicked(position)
# class member variables go here, for example:
# var a = 2
# var b = "textvar"

onready var mouse_position = Vector2(0,0)

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	pass


func _on_Control_input_event( ev ):
	if (ev.type == InputEvent.MOUSE_MOTION):
		mouse_position = Vector2(ev.x, ev.y)
	if (ev.type == InputEvent.MOUSE_BUTTON):
		if (ev.is_action_pressed("LMB")):
			emit_signal("clicked", mouse_position)
	pass # replace with function body


func _on_LadderArea2D_body_enter( body ):
	get_node("WindowDialog").popup_centered()
	get_tree().set_pause(true)
	pass # replace with function body
