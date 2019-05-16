extends Area2D

export (NodePath) var teleportTarget = null

var playerInDoor = false

func _ready():
	pass
	
func _process(delta):
	if Input.is_action_just_pressed("ui_up") and playerInDoor == true:
		get_tree().call_group("Players", "teleportTo", get_node(teleportTarget.position)
		
		
func _on_Portails_body_entered(body):
	if body.is_in_group("Players"):
		playerInDoor = true
		
		
	