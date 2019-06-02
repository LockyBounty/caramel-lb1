extends CanvasLayer


#signal start_game


func _ready():
	pass # Replace with function body.

func update_baguette(cptbag):
	$HUDMC/MainC/H2/Baguettelabel.text =str(MainGlobal.cptbag)+"/1"
	#print(MainGlobal.cptbag)
	#$Baguettelabel.text = str(cptbag)+"/1"

func update_codex(cptcodex):
	$HUDMC/MainC/H3/Codexlabel.text = str(MainGlobal.cptcodex)+"/1"
	
func update_etoile(cptetoile):
	$HUDMC/MainC/H1/Etoilelabel.text = str(MainGlobal.cptetoile)+"/5"
	
	

