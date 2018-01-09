extends "Minion.gd"

export(Vector2) var target

func _ready():
	get_node("../").connect("clicked", self, "_on_Control_clicked")
	set_fixed_process(true)
	move_speed	= rand_range(25,35)
	pass

func _fixed_process(delta):
	if (target != null):
		var vector = (target - get_pos()).normalized()
		var distance = target.distance_to(get_pos())
		if distance < 2:
			target = null
			return
		var left_over = move(vector * move_speed * delta)
		if (left_over != null and is_colliding()):
			var col_normal = get_collision_normal()
			var motion = col_normal.slide(vector * move_speed * delta)
			move(motion)
		if (left_over.length() > 0 && distance < 2):
			target = null

func _on_Control_clicked( position ):
	target = position + Vector2(rand_range(-16,16), rand_range(-16,16))
