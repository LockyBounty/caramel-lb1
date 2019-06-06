extends "res://engine/itemEntity.gd"

signal hit
onready var effect = get_node("Tweenbag")
onready var sprite = get_node("magicRod1")

func _ready():
	effect.interpolate_property(sprite, 'position', Vector2(0,0), Vector2(0,-31), .7, Tween.TRANS_QUAD,Tween.EASE_OUT)
	effect.interpolate_property(sprite, 'modulate', Color(1,1,1,1), Color(1,1,1,1), .7, Tween.TRANS_QUAD, Tween.EASE_OUT)

func _on_baguette2_body_entered(body):
	
	emit_signal("hit")
	print("You got the Apprentice Magic Wand!")
	effect.start()
	
func _on_Tweenbag_tween_completed(object, key):
	queue_free()