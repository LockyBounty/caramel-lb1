extends Area2D

onready var effect = get_node("TweenTouch")
onready var sprite = get_node("etoileTouch1")


func _ready():
	#Effets de transition de l'objets ".interpolate_property" de "Tween" prend 7 paramètres
	initialisation()
	
func initialisation():
	effect.interpolate_property(sprite, 'position', Vector2(0,0), Vector2(0,-31), 1.2, Tween.TRANS_QUAD, Tween.EASE_IN_OUT)
	#effect.interpolate_property(sprite, 'scale', sprite.get_scale(), Vector2(.3,.3), .9,Tween.TRANS_QUAD, Tween.EASE_OUT)
	effect.interpolate_property(sprite, 'modulate', Color(1,1,1,1), Color(1,1,1,0.9), 1.2, Tween.TRANS_QUAD, Tween.EASE_OUT)
	

func playTheTouchEffect():
	effect.start()


func _on_TweenTouch_tween_completed(object, key):
	$".".hide()
	effect.reset_all()
	#queue_free()
