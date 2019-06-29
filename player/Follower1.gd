extends KinematicBody2D
const follow_speed = 3

var zumbie = self
var speed = 2
#onready var target = $"/root/dir"

func _ready():	
	pass

func _physics_process(delta):
	var direction = $"../Player2".get_position()
	var a = (direction[0]-20)
	var b = (direction[1]+20)
	
	
	var ndirection = Vector2(a,b)
	print(ndirection)
	
	$".".position = $".".position.linear_interpolate(ndirection, delta * follow_speed)
	