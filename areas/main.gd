extends "res://engine/MainG.gd"


func _ready():
	pass
	#$Music.play()
	#pass # Replace with function body.

func _on_baguette2_hit():
	MainGlobal.cptbag +=1
	$HUD.update_baguette(MainGlobal.cptbag)
	#$HUD/GUI.updatetest(cptbag)



#func _on_codexv2_body_entered(body):# test de changement de scene
#	get_tree().change_scene_to(next_scene)

func _on_Button_pressed():
	$Music.play()

func _on_Buttonstop_pressed():
	$Music.stop()
