extends StaticBody2D

var points = 10

var color
var falling = false
var rot = 0
var fullness = 1

func _ready():
	set_modulate(Color(1-pow(randf(),2),1-pow(randf(), 2), 1-pow(randf(), 2), 1))
	color = modulate
	pass

func fall():
	falling = true
	
	
func _physics_process(delta):
	if(falling == true):
		position.y += 1000*delta
		rot+=4*delta
		rotation+=rot
		fullness -= delta
		set_modulate(Color(color.r*fullness, color.g*fullness, color.b*fullness, 1))
	else:
		fullness += 0.03 * delta
		set_modulate(Color(color.r*fullness, color.g*fullness, color.b*fullness, 1))