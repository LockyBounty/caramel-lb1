extends "res://engine/entity.gd"


#const SPEED = 40

#le code ci-dessous va lancer une boucle pour faire deplacer le mob 
#un certain nombre de pas, puis va lui faire changer de direction

var movetimer_length = 20
var movetimer = 0
export var speed = .1



func _ready():
	movedir = dir.rand()
	
	
func _physics_process(delta):
	movement_loop()
	print(delta)
	
	if movedir.length() > 0:
		movedir= movedir.normalized() * delta
		$AnimatedSprite.play()
	else:
		$AnimatedSprite.stop()
		
	if movedir.x != 0:#+ change la direction du mob en creant l effet miroir
		$AnimatedSprite.flip_h = movedir.x >0
	
		
	if movetimer > 0:
		movetimer -= 1
		
	if movetimer == 0 || is_on_wall():
		movedir = dir.rand()
		movetimer = movetimer_length
		
	