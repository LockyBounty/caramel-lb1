extends "res://engine/MainG.gd"


func _ready():
	$HUD.update_baguette(MainGlobal.cptbag) 
	$HUD.update_codex(MainGlobal.cptcodex) 
	$HUD.update_etoile(MainGlobal.cptetoile) 
	
	
	#$Music.play()
	
	#pass # Replace with function body.

	

func _on_baguette2_hit():
	MainGlobal.cptbag +=1
	$HUD.update_baguette(MainGlobal.cptbag)
	#$HUD/GUI.updatetest(cptbag)

func _on_codexv2_hit():
	MainGlobal.cptcodex +=1
	$HUD.update_codex(MainGlobal.cptcodex)
		

func _on_etoile_hit():
	MainGlobal.cptetoile+=1
	#On lance la fonction qu'on aura ecrit dans le HUD
	$HUD.update_etoile(MainGlobal.cptetoile)
	

#func _on_codexv2_body_entered(body):# test de changement de scene
#	get_tree().change_scene_to(next_scene)

func _on_Button_pressed():
	$Music.play()
	get_tree().reload_current_scene()
	MainGlobal.cptbag =0
	MainGlobal.cptcodex =0
	MainGlobal.cptetoile =0

func _on_Buttonstop_pressed():
	$Music.stop()

	
	OS.window_fullscreen = !OS.window_fullscreen
	print("it works")
	

