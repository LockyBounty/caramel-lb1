extends Node


func _ready():
	$HUD.update_baguette(MainGlobal.cptbag) 
	$HUD.update_codex(MainGlobal.cptcodex) 
	$HUD.update_etoile(MainGlobal.cptetoile) 

	#stop menu music
	mMenu.stop()
	#print(MainGlobal.enableAudio)
	if MainGlobal.enableAudio:
		mMainZone.play()

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
func _on_etoile2_hit():
	MainGlobal.cptetoile+=1
	$HUD.update_etoile(MainGlobal.cptetoile)
func _on_etoile3_hit():
	MainGlobal.cptetoile+=1
	$HUD.update_etoile(MainGlobal.cptetoile)
func _on_etoile4_hit():
	MainGlobal.cptetoile+=1
	$HUD.update_etoile(MainGlobal.cptetoile)
func _on_etoile5_hit():
	MainGlobal.cptetoile+=1
	$HUD.update_etoile(MainGlobal.cptetoile)

#func _on_codexv2_body_entered(body):# test de changement de scene
#	get_tree().change_scene_to(next_scene)

func _on_Button_pressed():
	get_tree().reload_current_scene()
	MainGlobal.cptbag =0
	MainGlobal.cptcodex =0
	MainGlobal.cptetoile =0








