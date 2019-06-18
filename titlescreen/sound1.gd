extends Sprite

func _ready():
	if MainGlobal.boolsound1==true:
		set_texture(MainGlobal.texture1)
	else:
		set_texture(MainGlobal.texture2)
	
	

func _on_Buttonsound1_pressed():
	_loadSoundIcon()

func _loadSoundIcon():
	if MainGlobal.boolsound1==false:
		set_texture(MainGlobal.texture1)
		MainGlobal.boolsound1=true
		#print("opened")
	else:
		set_texture(MainGlobal.texture2)
		MainGlobal.boolsound1=false 
		#print("closed")
	
