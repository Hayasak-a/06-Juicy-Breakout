extends KinematicBody2D


func _ready():
	add_to_group("Paddle")

func _physics_process(delta):
	var shape = $ColorRect.get_rect().size
	var view = get_viewport().get_visible_rect().size
	var target = get_viewport().get_mouse_position().x
	if target < shape.x / 2:
		target = shape.x / 2
	if target > view.x - shape.x / 2:
		target = view.x - shape.x / 2
	position = Vector2(target, position.y)
	
func suble(pos):
	get_node("Particles2D").look_at(pos)