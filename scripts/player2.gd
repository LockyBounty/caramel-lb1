
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
	
func move_player_virtual_stick(delta):
	movement_loop()
	spritedir_loop()
	
	#On arrondit les valeurs x, y pour avoir des valeurs nets pour 
	#les directions du personnage
	var x = round($Analog.stick_vector[0])
	var y = round($Analog.stick_vector[1])
	#print(x)
	#print(y)
	#On place le vector converti dans une variable
	var vectorConverti = Vector2(x,y)
	
	#On le place dans la var "movedir" déclaré dans "entity.gd"
	movedir = vectorConverti
	
	position += vectorConverti * $Analog.stick_speed * 1 * delta
	
	if movedir != Vector2(0,0):
		anim_switch("walk")
	else : 
		anim_switch("idle")
		
func _process(delta):
	move_player_virtual_stick(delta)

#func _physics_process(delta):
#	controls_loop()
#	movement_loop()
#	spritedir_loop()
#
#	#if is_on_wall():
#	#	if spritedir == "left" and test_move(transform, Vector2(-1,0)):
#	#		anim_switch("push")
#	#	if spritedir == "right" and test_move(transform, Vector2(1,0)):
#	#		anim_switch("push")
#	#	if spritedir == "up" and test_move(transform, Vector2(0,-1)):
#	#		anim_switch("push")
#	#	if spritedir == "down" and test_move(transform, Vector2(0,1)):
#	#		anim_switch("push")
#	if movedir != Vector2(0,0):
#		anim_switch("walk")
#	else : 
#		anim_switch("idle")




#func controls_loop():
	#control directionnel pour clavier
##	var LEFT	= Input.is_action_pressed("ui_left")
##	var RIGHT	= Input.is_action_pressed("ui_right")
##	var UP		= Input.is_action_pressed("ui_up")
##	var DOWN	= Input.is_action_pressed("ui_down")
#
##
#	movedir.x= -int(LEFT) + int(RIGHT)
#	movedir.y = -int(UP) + int(DOWN)




#func _on_Button_pressed():
#	get_tree().change_scene("res://areas/main.tscn")
#	get_tree().reload_current_scene()
