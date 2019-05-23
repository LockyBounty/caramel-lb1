extends "res://engine/itemEntity.gd"

#enum Items {health, ammo}
#
#export (Items) var type = Items.health


#var cptHeal = 0


func _on_codexv2_body_entered(body):
	cptcodex +=1
	print("You got the codex!")
	
	#emit_signal("cptcodex_changed", cptcodex)
	
#	match type:
#		Items.health:
#			if body.has_method('heal'):
#				body.heal(int(rand_range(amount.x, amount.y)))
#
#		Items.ammo:
#			pass
	queue_free()
