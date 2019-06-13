extends Node

#var main_world = preload("res://areas/main.tscn")
var texture1 = load("res://titlescreen/audio1whv1.png")
var texture2 = load("res://titlescreen/audio2whv1.png")
var textureChoice1 = load("res://player/george.png")
var textureChoice2 = load("res://player/betty.png")
var world1 = load("res://areas/main.tscn")
 

var charSelected = textureChoice1


var sceneSelected

var enableAudio1 = true
var boolsound1 = true



var cptcodex = 0
var cptbag = 0
var cptetoile = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func fonctionFullscreen():
	OS.window_fullscreen = !OS.window_fullscreen

