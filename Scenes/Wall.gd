extends StaticBody2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var positions
# Called when the node enters the scene tree for the first time.
func _ready():
	positions = position
	pass # Replace with function body.
	
func _physics_process(delta):
	position = positions

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
