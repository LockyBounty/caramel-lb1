extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	
	if MainGlobal.enableAudio == true:
		mMenu.stop()
		mCredits.play()
	
func _on_ReturnButton_pressed():
	get_tree().change_scene_to(MainGlobal.menuTitle)
	mCredits.stop()
