extends RigidBody2D

onready var Game = get_node("/root/Game")
onready var Starting = get_node("/root/Game/Starting")

var rot = 0

func _ready():
	contact_monitor = true
	set_max_contacts_reported(4)

func _physics_process(delta):
	# Check for collisions
	var bodies = get_colliding_bodies()
	for body in bodies:
		if body.is_in_group("Tiles"):
			Game.change_score(body.points)
			add_collision_exception_with(body)
			body.fall()
			set_modulate(Color(1-pow(randf(),2),1-pow(randf(), 2), 1-pow(randf(), 2), 1))
			linear_velocity*=1.05
		else:
			body.set_modulate(get_modulate())
	
	if position.y > get_viewport().size.y:
		Game.change_lives(-1)
		Starting.startCountdown(3)
		queue_free()
	
	rot += 2 * delta
	rotation += rot
	