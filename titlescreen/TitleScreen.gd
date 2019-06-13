extends Control

var world1 = preload("res://areas/main.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
	
	mMenu.play()


func _on_play_pressed():
	$fadeIn.show()
	$fadeIn.fade_in()
	MainGlobal.sceneSelected = MainGlobal.world1
	#get_tree().change_scene_to(world1)
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


func _on_ButtonLOL_pressed():
	MainGlobal.charSelected = MainGlobal.textureChoice2
	PL.set_texture(MainGlobal.charSelected)


func _on_fadeIn_fadeIn_finished():
	get_tree().change_scene_to(MainGlobal.sceneSelected)
