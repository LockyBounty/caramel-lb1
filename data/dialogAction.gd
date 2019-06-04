extends MapAction
class_name DialogueAction

export (String, FILE, "*.json") var chemin_dialogue : String

func interact() -> void:
	var dialog : Dictionary = load_dialog(chemin_dialogue)
	yield(local_map.play_dialog(dialog), "completed")
	emit_signal("finished")
	
func load_dialog(file_path) -> Dictionary:
	
	var file = File.new()
	assert file.file_exists(file_path)
	
	file.open(file_path, file.READ)
	var dialog = parse_json(file.get_as_text())
	assert dialog.size() > 0
	return dialog
	