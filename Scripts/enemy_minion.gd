extends "Minion.gd"

export(Vector2) var target

func _ready():
	get_node("../").connect("clicked", self, "_on_Control_clicked")
	set_fixed_process(true)
	pass

func _fixed_process(delta):
	if (target != null):
		var vector = (target - get_pos()).normalized()
		var distance = target.distance_to(get_pos())
		if distance < 2:
			target = null
			return
		var left_over = move(vector * move_speed * delta).length()
		if (left_over > 0 && distance < 16):
			target = null

func _on_Control_clicked( position ):
	target = position
