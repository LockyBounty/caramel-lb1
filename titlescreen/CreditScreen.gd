extends Control

func _ready():
	if MainGlobal.enableAudio == true:
		mCredits.play()

func _on_ReturnButton_pressed():
	$fadeIn.show()
	$fadeIn.fade_in()
	MainGlobal.cptMenuSound = 0
	

func _on_fadeIn_fadeIn_finished():
	mCredits.stop()
	get_tree().change_scene_to(MainGlobal.menuTitle)
	
