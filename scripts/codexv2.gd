extends "res://engine/itemEntity.gd"

signal hit

onready var effect = get_node("Tweencodex")
onready var sprite = get_node("codex")

func _ready():
	#Effets de transition de l'objets ".interpolate_property" de "Tween" prend 7 paramètres
	
	effect.interpolate_property(sprite, 'position', Vector2(0,0), Vector2(0,-31), 1.2, Tween.TRANS_QUAD, Tween.EASE_IN_OUT)
	#effect.interpolate_property(sprite, 'scale', sprite.get_scale(), Vector2(.3,.3), .9,Tween.TRANS_QUAD, Tween.EASE_OUT)
	effect.interpolate_property(sprite, 'modulate', Color(1,1,1,1), Color(1,1,1,0.9), 1.2, Tween.TRANS_QUAD, Tween.EASE_OUT)


func _on_codexv2_body_entered(body):
	print("You got the codex!")
	emit_signal("hit")
	$Collisioncodex.set_disabled(true) 
	effect.start()


func _on_Tweencodex_tween_completed(object, key):
	queue_free()
