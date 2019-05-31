extends CanvasLayer


#signal start_game


func _ready():
	pass # Replace with function body.

func update_baguette(cptbag):
	$HUDMC/MainC/H2/Baguettelabel.text =str(MainGlobal.cptbag)+"/1"
	print(MainGlobal.cptbag)
	#$Baguettelabel.text = str(cptbag)+"/1"

	

