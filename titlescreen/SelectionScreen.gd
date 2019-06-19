extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _on_Buttontoplay_pressed():
	get_tree().change_scene_to(MainGlobal.world1)

func _on_ReturnButton_pressed():
	get_tree().change_scene_to(MainGlobal.menuTitle)

func _on_ButtonMale_pressed():
	MainGlobal.charSelected = MainGlobal.textureChoice1
	print("char1")

func _on_ButtonFemale_pressed():
	MainGlobal.charSelected = MainGlobal.textureChoice2
	print("char2")
