extends Particles2D
var next_scene = preload("res://Scenes//Ball.tscn")
# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func test():
	pass
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var ba = get_tree().get_nodes_in_group("Ball")
	for ball in ba:
		look_at(ball.position)
	pass
