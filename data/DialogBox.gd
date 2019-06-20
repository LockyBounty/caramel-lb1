extends Polygon2D

#Un dico global pour stocker le parsing sur le fichier json
var dict = {} 
var cpt = 0

func _ready():
	var file = File.new()
	file.open("res://data/Dialog.json", file.READ)
	var text = file.get_as_text()
	dict = JSON.parse(text).result
	
	file.close()
	#print(dict["id1"]["name"])
	
func _input(event):
	if event is InputEventMouseButton:
		loadText()
	
func loadText():
	for i in (dict["id1"]["text"]):
	#On envoie les infos dans la boîte à dialogue:
		$DialogGetter.set_text(i)
	
	
	

#########################
#MODELE 1
########################
#	var p = JSON.parse('["hello", "world", "!"]')
#	if typeof(p.result) == TYPE_ARRAY:
#	    print(p.result[0]) # prints 'hello'
#	else:
#	    print("unexpected results")

#########################
#MODELE 2
########################
#var text_json = "{\"error\": false, \"data\": {\"player_id\": 1}}"
#var result_json = JSON.parse(text_json)
#var result = {}
#
#if result_json.error == OK:  # If parse OK
#    var data = result_json.result
#    print(data)
#else:  # If parse has errors
#    print("Error: ", result_json.error)
#    print("Error Line: ", result_json.error_line)
#    print("Error String: ", result_json.error_string)


