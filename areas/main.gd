extends Node

#var next_scene = preload("res://areas/ZoneFinale.tscn")
var cptbag =0


func _ready():
	pass
	#$Music.play()
	#pass # Replace with function body.



func _on_baguette2_hit():
	cptbag +=1
	#$HUD/GUI.updatetest(cptbag)

#func _on_codexv2_body_entered(body):# test de changement de scene
#	get_tree().change_scene_to(next_scene)

func _on_Button_pressed():
	$Music.play()



func _on_Buttonstop_pressed():
	$Music.stop()
