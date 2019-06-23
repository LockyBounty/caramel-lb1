extends Node

#Audio section :
var texture1 = load("res://titlescreen/audio1whv1.png")
var texture2 = load("res://titlescreen/audio2whv1.png")

var sound1HUD = load("res://HUD/Asset 43flat_@2x.png")
var sound2HUD = load("res://HUD/customAudioDisabled.png")

var enableAudio = true #mute on/off
var boolsound1 = true #texture switching

#Character selection:
var textureChoice1 = load("res://player/george.png") #male
var textureChoice2 = load("res://player/betty-customized-pink.png") #female
var charSelected = textureChoice1 #default

#func changeChar(selection):
#	get_tree("res://player/PLAYERSPRITE").texture = set_texture(charSelected)

#Gamezone:
var menuTitle = load("res://titlescreen/TitleScreen.tscn")
var menuRules = load("res://titlescreen/RulesScreen.tscn")
var menuCredits = load("res://titlescreen/CreditScreen.tscn")
var menuSelection = load("res://titlescreen/SelectionScreen.tscn")
var world1 = load("res://areas/main.tscn")
var sceneSelected

#character selection:

#var selectedBoy = true
#var selectedGirl = true
#
#var charSexSelected = selectedBoy #default


var boolMenuSound = true

var cptcodex = 0
var cptbag = 0
var cptetoile = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func fonctionFullscreen():
	OS.window_fullscreen = !OS.window_fullscreen

func fonctionResetCpt():
	cptbag =0
	cptcodex =0
	cptetoile =0