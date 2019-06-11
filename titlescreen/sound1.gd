extends Sprite

func _ready():
	pass
	

func _on_Buttonsound1_pressed():

	if MainGlobal.boolsound1==false:
		set_texture(MainGlobal.texture1)
		MainGlobal.boolsound1=true
		print("opened")
	else:
		set_texture(MainGlobal.texture2)
		MainGlobal.boolsound1=false 
		print("closed")
	
