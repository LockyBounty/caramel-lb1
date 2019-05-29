extends "res://engine/itemEntity.gd"

signal hit

func _on_baguette2_body_entered(body):
	
	emit_signal("hit")
	print("You got the apprentice magic wand!")
	
	queue_free()
	
