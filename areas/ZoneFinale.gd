extends "res://engine/MainG.gd"




func _ready():
	#Garde la valeur entre les scenes au sinon reset 
	$HUD.update_baguette(MainGlobal.cptbag) 
	$HUD.update_codex(MainGlobal.cptcodex) 
	$HUD.update_etoile(MainGlobal.cptetoile) 
	
	#pour le boss final
	set_process_input(false)
	pass
	#$Music.play()
	#pass # Replace with function body.
	

func _input(event):
	
	if Input.is_action_pressed("ui_up"):
		print("action to do")


#func _on_baguette2_hit():
#	MainGlobal.cptbag +=1
#	$HUD.update_baguette(MainGlobal.cptbag)
#	#$HUD/GUI.updatetest(cptbag)

func _on_finalBoss_body_entered(body):
	set_process_input(true)
	


func _on_finalBoss_body_exited(body):
	set_process_input(false)
