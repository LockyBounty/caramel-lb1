extends Area2D

export (NodePath) var teleport_target = null

var playerInDoor = false

func _ready():
	pass
	
func _process(delta):
	if Input.is_action_just_pressed("enter_door") and playerInDoor == true:
		get_tree().call_group("Players", "teleport_to", get_node(teleport_target.position))
		
		

func _on_PortailA_body_entered(body):
	if body.is_in_group("Players"):
		playerInDoor = true


func _on_PortailA_body_exited(body):
	if body.is_in_group("Players"):
		playerInDoor =false



