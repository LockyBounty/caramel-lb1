extends KinematicBody2D

var zumbie = self
var speed = 2
onready var target = get_parent().get_node("player2")
func _ready():
	_fixed_process(true)
	pass

func _fixed_process(delta):
	var direction = (target.get_global_pos() - zumbie.get_global_pos()).normalized()
	#move(direction*speed) 
	pass