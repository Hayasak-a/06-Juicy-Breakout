extends StaticBody2D

var points = 10

var color
var falling = false
var rot = 0

func _ready():
	set_modulate(Color(1-pow(randf(),2),1-pow(randf(), 2), 1-pow(randf(), 2), 1))
	pass

func fall():
	falling = true
	
	
func _physics_process(delta):
	if(falling == true):
		position.y += 1000*delta
		rot+=4*delta
		rotation+=rot