extends Control



# Called when the node enters the scene tree for the first time.
func _ready():
	
	mMenu.play()


func _on_play_pressed():
	$fadeIn.show()
	$fadeIn.fade_in()
	MainGlobal.sceneSelected = MainGlobal.world1
	
func _on_credits_pressed():
	$fadeIn.show()
	$fadeIn.fade_in()
	MainGlobal.sceneSelected = MainGlobal.menuCredits

func _on_Buttonfull1_pressed():
	MainGlobal.fonctionFullscreen()


func _on_Buttonsound1_pressed():
	if MainGlobal.enableAudio == true:
		#pause Audio
		mMenu.set_stream_paused(MainGlobal.enableAudio) 
		#set then global var to false to switch
		MainGlobal.enableAudio = false
	else :
		mMenu.set_stream_paused(MainGlobal.enableAudio)
		#set then global var to true to switch
		MainGlobal.enableAudio = true


#func _on_ButtonLOL_pressed():
#	MainGlobal.charSelected = MainGlobal.textureChoice2
#	PL.set_texture(MainGlobal.charSelected)



func _on_fadeIn_fadeIn_finished():
	get_tree().change_scene_to(MainGlobal.sceneSelected)


