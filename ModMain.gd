extends Node

# Set mod priority if you want it to load before/after other mods
# Mods are loaded from lowest to highest priority, default is 0
const MOD_PRIORITY = 1001
# Name of the mod, used for writing to the logs
const MOD_NAME = "Abandoned Technologies"
const MOD_VERSION_MAJOR = 3
const MOD_VERSION_MINOR = 0
const MOD_VERSION_BUGFIX = 7
const MOD_VERSION_METADATA = ""
# Path of the mod folder, automatically generated on runtime
var modPath:String = get_script().resource_path.get_base_dir() + "/"
# Required var for the replaceScene() func to work
var _savedObjects := []

# Initializes the configuration variable. Used by loadSettings.
var modConfig = {}

var dir = Directory.new()
var correct = dir.file_exists("res://HevLib/pointers.gd")
func _init(modLoader = ModLoader):
	
	l("Initializing DLC")
	
	
	
	loadDLC()
	
	var self_path = self.get_script().get_path()
	var self_directory = self_path.split(self_path.split("/")[self_path.split("/").size() - 1])[0]
	var self_check = load(self_directory + "mod_checker_script.tscn").instance()
	add_child(self_check)
	
	if correct:
		loadSettings()
		addContainerRequests()
		l("Settings & DLC loaded, now initializing events")
		
		# Scripts used to compile new equipment loadouts for ships
		# installScriptExtension("ships/Shipyard.gd") - Legacy script used to load new equipment loadouts
		
		updateDefaultLoadouts()
		
		addAgendas()
		
		# update conversations moved out until next stable release
		
		
		addHabitatTradeAdditions()
		
		addConversations()
		
		addAgendaBasedStories()
		updateTL("i18n/en.txt", "|",true,false)
		updateTL("i18n/ua.txt", "|",true,false)
		updateTL("i18n/ru.txt", "|",true,false)
		l("Loaded translations")
		
		l("Loading essential files, almost complete")
		
		updateEvents()
		replaceScene("comms/conversation/CargoContainer.tscn")
		
		l("Initialized %s completely!" % MOD_NAME)




# Do stuff on ready
# At this point all AutoLoads are available and the game is loaded
func _ready():
	l("Readying")
	# Game.tscn should be loaded on ready, separate from TheRing.tscn to allow for other mods to add their own events
	replaceScene("Game.tscn")
	l("Ready")
	

func updateEvents():
	# Event initialization
	if modConfig.get("DD_MAIN_TOGGLES",{}).get("addEvents",true):
		l("Initializing core event handling [DD_MAIN_TOGGLES -> addEvents]")
#		replaceScene("story/TheRing.tscn")
		if modConfig.get("DD_EVENT_TOGGLES",{}).get("addDerelicts",true):
			replaceScene("story/derelicts/TheRing.tscn","res://story/TheRing.tscn")
		if modConfig.get("DD_EVENT_TOGGLES",{}).get("addNewNPCMiners",true):
			replaceScene("story/miners/TheRing.tscn","res://story/TheRing.tscn")
		if modConfig.get("DD_EVENT_TOGGLES",{}).get("addHabitatUnderConstruction",true):
			installScriptExtension("Factions.gd")
			replaceScene("story/habitat/TheRing.tscn","res://story/TheRing.tscn")
		if modConfig.get("DD_EVENT_TOGGLES",{}).get("addNewRogueContainers",true):
			replaceScene("story/containers/TheRing.tscn","res://story/TheRing.tscn")
		if modConfig.get("DD_EVENT_TOGGLES",{}).get("kesslerSyndrome",true):
			replaceScene("story/kesslersyndrome/TheRing.tscn","res://story/TheRing.tscn")
		if modConfig.get("DD_EVENT_TOGGLES",{}).get("rogueMonos",true):
			replaceScene("story/rogueMonos/TheRing.tscn","res://story/TheRing.tscn")
			replaceScene("story/rogueMonos/DIALOG_PIRATE_SUPPORT.tscn","res://comms/conversation/subtrees/DIALOG_PIRATE_SUPPORT.tscn")
			replaceScene("story/rogueMonos/AnarchyStationConversation.tscn","res://comms/conversation/AnarchyStationConversation.tscn")
		l("Loaded ring events")
		if modConfig.get("DD_EVENT_TOGGLES",{}).get("addNewVilcyAndG4AEncounters",true):
			l("Initializing combat-driven events [DD_EVENT_TOGGLES -> addNewVilcyAndG4AEncounters]")
			installScriptExtension("story/vilcySlashG4A/Vilcy.gd")
			replaceScene("story/vilcySlashG4A/TheRing.tscn","res://story/TheRing.tscn")
			l("Combat-driven events loaded")
		
		
func updateDefaultLoadouts():
	if modConfig.get("DD_MAIN_TOGGLES",{}).get("expandShipEquipmentOptions",true):
		l("Initializing ship loadout configurations [DD_MAIN_TOGGLES -> expandShipEquipmentOptions]")
		installScriptExtension("ships/HardpointSeparation.gd")
		installScriptExtension("ships/prospector.gd")
		l("Added ship configs for general prospector ships")
		installScriptExtension("ships/prospector-bald.gd")
		l("Added ship configs for bald eagles")
#		installScriptExtension("ships/prospector-vp.gd")
#		l("Added ship configs for vultures")
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
#		installScriptExtension("ships/trtl-44.gd")
#		l("Added ship configs for the K44")
		l("Loaded ship configurations")

func addAgendas():
	# Adding new agenda role
	if modConfig.get("DD_MAIN_TOGGLES",{}).get("addAgenda",true):
		l("Initializing additional agendas [DD_MAIN_TOGGLES -> addAgenda]")
		installScriptExtension("story/Agenda.gd")
		l("Loaded agendas")

func addConversations():
	# Conversation initialization for events
	if modConfig.get("DD_MAIN_TOGGLES",{}).get("addEvents",true) and modConfig.get("DD_EVENT_TOGGLES",{}).get("addNewPirateTrades",true):
		l("Initializing dialogue-driven events [DD_MAIN_TOGGLES -> addEvents]")
		if modConfig.get("DD_AGENDA_TOGGLES",{}).get("addHistorian",true):
			replaceScene("comms/conversation/subtrees/StandClearMyArea.tscn")
		if modConfig.get("DD_EVENT_TOGGLES",{}).get("addDerelicts",true) and modConfig.get("DD_EVENT_TOGGLES",{}).get("addNewRogueContainers",true):
			replaceScene("comms/conversation/subtrees/DIALOG_PIRATE_SUPPORT.tscn")
		if modConfig.get("DD_EVENT_TOGGLES",{}).get("addHabitatUnderConstruction",true):
			replaceScene("comms/conversation/subtrees/DIALOG_MINER_SEEN_STATION.tscn")
		if modConfig.get("DD_EVENT_TOGGLES",{}).get("addDerelicts",true) and modConfig.get("DD_EVENT_TOGGLES",{}).get("addHabitatUnderConstruction",true):
			replaceScene("comms/conversation/InterCrewBanter.tscn")
		l("Loaded dialogue")

func addContainerRequests():
	# Adds extra dialogue to request containers from THICCs
	if modConfig.get("DD_MAIN_TOGGLES",{}).get("requestNewContainers",true):
		l("Initializing container requesting [DD_MAIN_TOGGLES -> requestNewContainers]")
		replaceScene("comms/conversation/subtrees/DIALOG_STORAGE_RETURNING_1.tscn")
		l("Loaded container requesting dialogue, thanks Kaidere for this suggestion")
	

func addAgendaBasedStories():
	# Add main interplanetary container storyline and disabled notice
	if modConfig.get("DD_MAIN_TOGGLES",{}).get("addEvents",true) and modConfig.get("DD_MAIN_TOGGLES",{}).get("addAgenda",true) and modConfig.get("DD_MAIN_TOGGLES",{}).get("addEquipment",true) and modConfig.get("DD_AGENDA_TOGGLES",{}).get("addHistorian",true):
		l("Initializing event-based equipment location [DD_MAIN_TOGGLES -> addEvents] + [DD_MAIN_TOGGLES -> addAgenda] + [DD_MAIN_TOGGLES -> addEquipment]")
		replaceScene("comms/conversation/MinerConversation.tscn")
		replaceScene("story/historianAgenda/TheRing.tscn","res://story/TheRing.tscn")
		l("Loaded agenda-driven events")
	if not modConfig.get("DD_MAIN_TOGGLES",{}).get("addEvents",true) or not modConfig.get("DD_MAIN_TOGGLES",{}).get("addAgenda",true) or not modConfig.get("DD_MAIN_TOGGLES",{}).get("addEquipment",true):
		l("Failed to load event-based equipment location due to one or more of the following [DD_MAIN_TOGGLES] options being disabled: [addEvents], [addAgenda], [addEquipment]")
	l("Finished loading Derelict Delights content, now initializing translations")

func addHabitatTradeAdditions():
	# Adds new habitat trades
	if modConfig.get("DD_MAIN_TOGGLES",{}).get("obontosAskForMoreStuff",true):
		l("Initializing habitat trades [DD_MAIN_TOGGLES -> obontosAskForMoreStuff]")
		replaceScene("comms/conversation/HabitatConversation.tscn")
		l("Loaded habitat trades")


func loadSettings():
	l(MOD_NAME + ": Loading mod settings")
	
	var ConfigDriver = load("res://HevLib/pointers/ConfigDriver.gd")
	modConfig = ConfigDriver.__get_config("AbandonedTechnologies")
	
	l(MOD_NAME + ": Finished loading settings")
	
# Helper script to load translations using csv format
# `path` is the path to the transalation file
# `delim` is the symbol used to seperate the values
# example usage: updateTL("i18n/translation.txt", "|")
func updateTL(path:String, delim:String = ",", useRelativePath:bool = true, fullLogging:bool = true):
	if useRelativePath:
		path = str(modPath + path)
	l("Adding translations from: %s" % path)
	var tlFile:File = File.new()
	var err = tlFile.open(path, File.READ)
	
	if err != OK:
		return
	
	var translations := []
	
	var translationCount = 0
	var csvLine := tlFile.get_line().split(delim)
	
	if fullLogging:
		l("Adding translations as: %s" % csvLine)
	for i in range(1, csvLine.size()):
		var translationObject := Translation.new()
		translationObject.locale = csvLine[i]
		translations.append(translationObject)
	
	while not tlFile.eof_reached():
		var line = tlFile.get_line()
		if line.begins_with("#"):
			continue
		csvLine = line.split(delim)
		var size = csvLine.size()
		if size > 1:
			if size > 2:
				var i = 0
				while i < size:
					if csvLine[i].ends_with("\\") and i < size:
						csvLine[i] = csvLine[i].rstrip("\\") + delim + csvLine[i + 1]
						csvLine.remove(i + 1)
						size -= 1
					i += 1
			var translationID := csvLine[0]
			for i in range(1, size):
				translations[i - 1].add_message(translationID, csvLine[i].c_unescape())
			if fullLogging:
				l("Added translation: %s" % csvLine)
			translationCount += 1
	
	tlFile.close()
	
	for translationObject in translations:
		TranslationServer.add_translation(translationObject)
	l("%s Translations Updated" % translationCount)

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

func l(msg:String, title:String = MOD_NAME, version:String = str(MOD_VERSION_MAJOR) + "." + str(MOD_VERSION_MINOR) + "." + str(MOD_VERSION_BUGFIX)):
	if not MOD_VERSION_METADATA == "":
		version = version + "-" + MOD_VERSION_METADATA
	Debug.l("[%s V%s]: %s" % [title, version, msg])
