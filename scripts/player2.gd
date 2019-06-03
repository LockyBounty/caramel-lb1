
extends "res://engine/entity.gd"

const MAX_ZOOM = Vector2(0.6,0.6)
const MIN_ZOOM = Vector2(1,1)

#export (int) var SPEED
#var velocity
var screensize
var screenHeight = ProjectSettings.get_setting("display/window/size/height")
var screenWidth = ProjectSettings.get_setting("display/window/size/width")
var movement = Vector2(0,0)

func _ready():
	screensize = get_viewport_rect().size
	
func _process(delta):
	move_player_virtual_stick(delta)



func _physics_process(delta):
	controls_loop()
	movement_loop()
	spritedir_loop()
	
	#if is_on_wall():
	#	if spritedir == "left" and test_move(transform, Vector2(-1,0)):
	#		anim_switch("push")
	#	if spritedir == "right" and test_move(transform, Vector2(1,0)):
	#		anim_switch("push")
	#	if spritedir == "up" and test_move(transform, Vector2(0,-1)):
	#		anim_switch("push")
	#	if spritedir == "down" and test_move(transform, Vector2(0,1)):
	#		anim_switch("push")
	if movedir != Vector2(0,0):
		anim_switch("walk")
	else : 
		anim_switch("idle")
	

func controls_loop():
	var LEFT	= Input.is_action_pressed("ui_left")
	var RIGHT	= Input.is_action_pressed("ui_right")
	var UP		= Input.is_action_pressed("ui_up")
	var DOWN	= Input.is_action_pressed("ui_down")
	
	movedir.x= -int(LEFT) + int(RIGHT)
	movedir.y = -int(UP) + int(DOWN)
	

func move_player_virtual_stick(delta):
	position += $Analog.stick_vector * $Analog.stick_speed * 2 * delta