extends MarginContainer

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func updatetest(cptbag):
	print(cptbag)
	$MainContainer/counterMenu/counterrod/background/numberrod.text = str(cptbag)+"/1"