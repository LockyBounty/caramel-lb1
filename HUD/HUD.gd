extends CanvasLayer


#signal start_game


func _ready():
	$POPUPMC.hide()

func update_baguette(cptbag):
	$HUDMC/MainC/H2/Baguettelabel.text =str(MainGlobal.cptbag)+"/1"
	#print(MainGlobal.cptbag)
	#$Baguettelabel.text = str(cptbag)+"/1"

func update_codex(cptcodex):
	$HUDMC/MainC/H3/Codexlabel.text = str(MainGlobal.cptcodex)+"/1"
	
func update_etoile(cptetoile):
	$HUDMC/MainC/H1/Etoilelabel.text = str(MainGlobal.cptetoile)+"/5"
	


#Bouton du menu
func _on_Buttonclose_pressed():
	$POPUPMC.hide()
	
func _on_Buttonopenmenu_pressed():
	$POPUPMC.show()


func _on_Buttonreset_pressed():
	get_tree().change_scene("res://areas/main.tscn")
	MainGlobal.cptbag =0
	MainGlobal.cptcodex =0
	MainGlobal.cptetoile =0
	


func _on_Buttonaudio_pressed():
	
	if MainGlobal.enableAudio == true:
		mMainZone.set_stream_paused(MainGlobal.enableAudio) 
		MainGlobal.enableAudio = false
	else :
		mMainZone.set_stream_paused(MainGlobal.enableAudio)
		MainGlobal.enableAudio = true


func _on_Buttonhome_pressed():
	#temporaire
	mMainZone.stop()
	get_tree().change_scene_to(MainGlobal.menuTitle)


func _on_Buttonwindow_pressed():
	MainGlobal.fonctionFullscreen()
