extends "res://engine/MainG.gd"


func _ready():
	#Garde la valeur entre les scenes au sinon reset 
	$HUD.update_baguette(MainGlobal.cptbag) 
	
	pass
	#$Music.play()
	#pass # Replace with function body.



func _on_baguette2_hit():
	MainGlobal.cptbag +=1
	$HUD.update_baguette(MainGlobal.cptbag)
	#$HUD/GUI.updatetest(cptbag)