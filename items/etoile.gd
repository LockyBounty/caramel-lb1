extends "res://engine/itemEntity.gd"

signal hit #le nom du signal doit être un string

func _ready():
	
	pass # Replace with function body.

func _on_etoile_body_entered(body):
	#On emmet le signal lorsque le block de collision 
	#est touché
	emit_signal("hit")
	
	#On libère l'objet de la mémoire
	queue_free()
	
	