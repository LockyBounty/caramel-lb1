extends "res://engine/itemEntity.gd"

signal hit

func _on_codexv2_body_entered(body):
	
	print("You got the codex!")
	
	emit_signal("hit")
	
	queue_free()
