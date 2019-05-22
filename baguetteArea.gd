extends "res://engine/itemEntity.gd"

enum Items {health, ammo}

export (Items) var type = Items.health
export (Vector2) var amount = Vector2(10,25)

#var cptHeal = 0

func _on_baguetteArea_body_entered(body):
	cptbag +=1
	print("You got "+ str(cptbag)+ " magic wand!")
	#emit_signal("cpt_baguette", cptbag)
	
	match type:
		Items.health:
			if body.has_method('heal'):
				body.heal(int(rand_range(amount.x, amount.y)))
			
		Items.ammo:
			pass
	queue_free()
	
	