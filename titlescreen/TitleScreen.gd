extends Control

var world1 = preload("res://areas/main.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
	
	mMenu.play()


func _on_play_pressed():
	get_tree().change_scene_to(world1)
	#get_tree().change_scene("res://areas/main.tscn")

func _on_Buttonfull1_pressed():
	MainGlobal.fonctionFullscreen()


func _on_Buttonsound1_pressed():
	if MainGlobal.enableAudio1 == true:
		mMenu.stop()
		MainGlobal.enableAudio1 = false
	else :
		mMenu.play()
		MainGlobal.enableAudio1 = true
