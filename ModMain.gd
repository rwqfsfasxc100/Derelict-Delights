extends Node

# Set mod priority if you want it to load before/after other mods
# Mods are loaded from lowest to highest priority, default is 0
const MOD_PRIORITY = 1
# Name of the mod, used for writing to the logs
const MOD_NAME = "Derelict Delights v.1.0.0"
# Path of the mod folder, automatically generated on runtime
var modPath:String = get_script().resource_path.get_base_dir() + "/"
# Required var for the replaceScene() func to work
var _savedObjects := []


# Initialize the mod
# This function is executed before the majority of the game is loaded
# Only the Tool and Debug AutoLoads are available
# Script and scene replacements should be done here, before the originals are loaded
func _init(modLoader = ModLoader):
	l("Initializing DLC")
	
	loadDLC()
	
	l("DLC loaded, now initializing events")
	
	# Event initialization
	installScriptExtension("story/Vilcy.gd")
	
	l("New events have been loaded, now initializing new ship equipment")

	replaceScene("ships/EIME.tscn")
	
	replaceScene("enceladus/Upgrades.tscn")
	replaceScene("weapons/WeaponSlot.tscn")
	
	l("Equipment and ships loaded, now initializing ship loadouts")
# Scripts used to compile new equipment loadouts for ships
	# installScriptExtension("ships/Shipyard.gd") - Legacy script used to load new equipment loadouts

	installScriptExtension("ships/prospector.gd")
	l("Added ship configs for general prospector ships")
	installScriptExtension("ships/prospector-bald.gd")
	l("Added ship configs for bald eagles")
	#installScriptExtension("ships/prospector-vp.gd") - Crashes game if loaded
	#l("Added ship configs for vultures")
	installScriptExtension("ships/at225.gd")
	l("Added ship configs for titan ships")
	installScriptExtension("ships/cothon.gd")
	l("Added ship configs for cothon ships")
	installScriptExtension("ships/eime.gd")
	l("Added ship configs for the EIME")
	installScriptExtension("ships/kitsune.gd")
	l("Added ship configs for the kitsune")
	installScriptExtension("ships/ocp.gd")
	l("Added ship configs for the ocp")
	installScriptExtension("ships/trtl.gd")
	l("Added ship configs for general TNTRL ships")
	#installScriptExtension("ships/trtl-44.gd") - Crashes game if loaded
	#("Added ship configs for the K44")
	
	l("Loaded ship configurations, now initializing conversations")
	#Conversation initialization
	replaceScene("comms/conversation/subtrees/DIALOG_PIRATE_SUPPORT.tscn")
	replaceScene("comms/conversation/InterCrewBanter.tscn")
	l("Loaded conversations, now initializing translations")
	
	updateTL("i18n/en.txt", "|")
	l("Loaded translations")
	
	l("Loading essential files, almost complete")
	
	installScriptExtension("menu/TitleMenu.gd")
	replaceScene("TitleScreen.tscn")
	replaceScene("story/TheRing.tscn")
	replaceScene("Game.tscn")
	
	l("Initialized Derelict Delights completely!")


# Do stuff on ready
# At this point all AutoLoads are available and the game is loaded
func _ready():
	l("Readying")
	l("Ready")
	

# Helper script to load translations using csv format
# `path` is the path to the transalation file
# `delim` is the symbol used to seperate the values
# example usage: updateTL("i18n/translation.txt", "|")
func updateTL(path:String, delim:String = ","):
	path = str(modPath + path)
	l("Adding translations from: %s" % path)
	var tlFile:File = File.new()
	tlFile.open(path, File.READ)

	var translations := []

	var csvLine := tlFile.get_line().split(delim)
	l("Adding translations as: %s" % csvLine)
	for i in range(1, csvLine.size()):
		var translationObject := Translation.new()
		translationObject.locale = csvLine[i]
		translations.append(translationObject)

	while not tlFile.eof_reached():
		csvLine = tlFile.get_csv_line(delim)

		if csvLine.size() > 1:
			var translationID := csvLine[0]
			for i in range(1, csvLine.size()):
				translations[i - 1].add_message(translationID, csvLine[i].c_unescape())
			l("Added translation: %s" % csvLine)

	tlFile.close()

	for translationObject in translations:
		TranslationServer.add_translation(translationObject)

	l("Translations Updated")


# Helper function to extend scripts
# Loads the script you pass, checks what script is extended, and overrides it
func installScriptExtension(path:String):
	var childPath:String = str(modPath + path)
	var childScript:Script = ResourceLoader.load(childPath)

	childScript.new()

	var parentScript:Script = childScript.get_base_script()
	var parentPath:String = parentScript.resource_path

	l("Installing script extension: %s <- %s" % [parentPath, childPath])

	childScript.take_over_path(parentPath)


# Helper function to replace scenes
# Can either be passed a single path, or two paths
# With a single path, it will replace the vanilla scene in the same relative position
func replaceScene(newPath:String, oldPath:String = ""):
	l("Updating scene: %s" % newPath)

	if oldPath.empty():
		oldPath = str("res://" + newPath)

	newPath = str(modPath + newPath)

	var scene := load(newPath)
	scene.take_over_path(oldPath)
	_savedObjects.append(scene)
	l("Finished updating: %s" % oldPath)


# Instances Settings.gd, loads DLC, then frees the script.
func loadDLC():
	l("Preloading DLC as workaround")
	var DLCLoader:Settings = preload("res://Settings.gd").new()
	DLCLoader.loadDLC()
	DLCLoader.queue_free()
	l("Finished loading DLC")


# Func to print messages to the logs
func l(msg:String, title:String = MOD_NAME):
	Debug.l("[%s]: %s" % [title, msg])
