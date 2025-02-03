extends Node

# Set mod priority if you want it to load before/after other mods
# Mods are loaded from lowest to highest priority, default is 0
const MOD_PRIORITY = 1001
# Name of the mod, used for writing to the logs
const MOD_NAME = "Derelict Delights v.1.4.3"
# Path of the mod folder, automatically generated on runtime
var modPath:String = get_script().resource_path.get_base_dir() + "/"
# Required var for the replaceScene() func to work
var _savedObjects := []

# Initializes the configuration variable. Used by loadSettings.
var modConfig = {}

var ZKYConfig = {}

# Initializes dynamic mod variables
var BOOTLEG_PDT = false
var DRONE_OCP = false
var NTCED = false
var HEAVY_COTHON = false
var INDUSTRIES_OF_ENCELADUS = false
var KTI_COTHON_MKII = false
var KTI_225 = false
var KTI_KITSUMO = false
var KTI_K_SERIES = false
var KTI_MPR_RCS = false
var KTI_MPR_TORCH = false
var KTI_MTR_RCS = false
var KTI_OCP = false
var MOAR_RADARS = false
var ZKY = false

# Initialize the mod
# This function is executed before the majority of the game is loaded
# Only the Tool and Debug AutoLoads are available
# Script and scene replacements should be done here, before the originals are loaded
func _init(modLoader = ModLoader):
	l("Initializing DLC")
	
# Modify Settings.gd first so we can load config and DLC
	installScriptExtension("Settings.gd")
	loadSettings()
	
	loadDLC()
	
	l("Settings & DLC loaded, now initializing events")
	
	updateEquipment()
	
	# Scripts used to compile new equipment loadouts for ships
	# installScriptExtension("ships/Shipyard.gd") - Legacy script used to load new equipment loadouts
	
	updateDefaultLoadouts()
	
	addAgendas()
	
	addConversations()
	
	addContainerRequests()
	
	addHabitatTradeAdditions()
	
	addAgendaBasedStories()
	
	updateTL("i18n/en.txt", "|")
	updateTL("i18n/ua.txt", "|")
	l("Loaded translations")
	
	l("Loading essential files, almost complete")
	
	installScriptExtension("menu/TitleMenu.gd")
	replaceScene("TitleScreen.tscn")
	updateEvents()
	handleMods()
	replaceScene("Game.tscn")
	
	l("Initialized %s completely!" % MOD_NAME)

func handleMods():
	if modConfig["mainToggles"]["addModSupport"]:
		modsInstalled()
		if not modConfig["DDEventLoaderSettings"]["disableDynamicEnablingAndForceModFunctionality"]:
			dynamicModVerification()
			attachModCompat()
		else:
			nonDynamicHandling()
			attachModCompat()
	else:
		l("Mod support not enabled, skipping")

func updateEvents():
	# Event initialization
	if modConfig["mainToggles"]["addEvents"]:
		l("Initializing core event handling [mainToggles -> addEvents]")
#		replaceScene("story/TheRing.tscn")
		if modConfig["eventToggles"]["addDerelicts"]:
			replaceScene("story/derelicts/TheRing.tscn","res://story/TheRing.tscn")
		if modConfig["eventToggles"]["addNewNPCMiners"]:
			replaceScene("story/miners/TheRing.tscn","res://story/TheRing.tscn")
		if modConfig["eventToggles"]["addHabitatUnderConstruction"]:
			installScriptExtension("Factions.gd")
			replaceScene("story/habitat/TheRing.tscn","res://story/TheRing.tscn")
		if modConfig["eventToggles"]["addNewRogueContainers"]:
			replaceScene("story/containers/TheRing.tscn","res://story/TheRing.tscn")
		l("Loaded ring events")
		if modConfig["eventToggles"]["addNewVilcyAndG4AEncounters"]:
			l("Initializing combat-driven events [eventToggles -> addNewVilcyAndG4AEncounters]")
			installScriptExtension("story/vilcySlashG4A/Vilcy.gd")
			replaceScene("story/vilcySlashG4A/TheRing.tscn","res://story/TheRing.tscn")
			l("Combat-driven events loaded")
		
func updateEquipment():# Equipment additions
	if modConfig["mainToggles"]["addEquipment"]:
		l("Initializing equipment [mainToggles -> addEquipment]")
		replaceScene("ships/EIME.tscn")
		replaceScene("ships/Eagle-Prospector-VP.tscn")
		replaceScene("ships/Eagle-Prospector-Lux.tscn")
		replaceScene("ships/Eagle-Prospector-Fat.tscn")
		replaceScene("ships/Eagle-Prospector.tscn")
		replaceScene("ships/ATK225-B.tscn")
		replaceScene("ships/ATK225.tscn")
	
		replaceScene("weapons/WeaponSlot.tscn")
		replaceScene("enceladus/Upgrades.tscn")
		l("Equipment and ships loaded")
		
func updateDefaultLoadouts():
	if modConfig["mainToggles"]["expandShipEquipmentOptions"]:
		l("Initializing ship loadout configurations [mainToggles -> expandShipEquipmentOptions]")
		installScriptExtension("ships/HardpointSeparation.gd")
		installScriptExtension("ships/prospector.gd")
		l("Added ship configs for general prospector ships")
		installScriptExtension("ships/prospector-bald.gd")
		l("Added ship configs for bald eagles")
		installScriptExtension("ships/prospector-vp.gd")
		l("Added ship configs for vultures")
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
		installScriptExtension("ships/trtl-44.gd")
		l("Added ship configs for the K44")
		l("Loaded ship configurations")

func addAgendas():
	# Adding new agenda role
	if modConfig["mainToggles"]["addAgenda"]:
		l("Initializing additional agendas [mainToggles -> addAgenda]")
		installScriptExtension("story/Agenda.gd")
		l("Loaded agendas")

func addConversations():
	# Conversation initialization for events
	if modConfig["mainToggles"]["addEvents"] and modConfig["eventToggles"]["addNewPirateTrades"]:
		l("Initializing dialogue-driven events [mainToggles -> addEvents]")
		if modConfig["agendaToggles"]["addHistorian"]:
			replaceScene("comms/conversation/subtrees/StandClearMyArea.tscn")
		if modConfig["eventToggles"]["addDerelicts"] and modConfig["eventToggles"]["addNewRogueContainers"]:
			replaceScene("comms/conversation/subtrees/DIALOG_PIRATE_SUPPORT.tscn")
		if modConfig["eventToggles"]["addHabitatUnderConstruction"]:
			replaceScene("comms/conversation/subtrees/DIALOG_MINER_SEEN_STATION.tscn")
		if modConfig["eventToggles"]["addDerelicts"] and modConfig["eventToggles"]["addHabitatUnderConstruction"]:
			replaceScene("comms/conversation/InterCrewBanter.tscn")
		l("Loaded dialogue")

func addContainerRequests():
	# Adds extra dialogue to request containers from THICCs
	if modConfig["mainToggles"]["requestNewContainers"]:
		l("Initializing container requesting [mainToggles -> requestNewContainers]")
		replaceScene("comms/conversation/subtrees/DIALOG_STORAGE_RETURNING_1.tscn")
		l("Loaded container requesting dialogue, thanks Kaidere for this suggestion")
	

func addAgendaBasedStories():
	# Add main interplanetary container storyline and disabled notice
	if modConfig["mainToggles"]["addEvents"] and modConfig["mainToggles"]["addAgenda"] and modConfig["mainToggles"]["addEquipment"] and modConfig["agendaToggles"]["addHistorian"]:
		l("Initializing event-based equipment location [mainToggles -> addEvents] + [mainToggles -> addAgenda] + [mainToggles -> addEquipment]")
		replaceScene("comms/conversation/MinerConversation.tscn")
		l("Loaded agenda-driven events")
	if not modConfig["mainToggles"]["addEvents"] or not modConfig["mainToggles"]["addAgenda"] or not modConfig["mainToggles"]["addEquipment"]:
		l("Failed to load event-based equipment location due to one or more of the following [mainToggles] options being disabled: [addEvents], [addAgenda], [addEquipment]")
	l("Finished loading Derelict Delights content, now initializing translations")

func addHabitatTradeAdditions():
	# Adds new habitat trades
	if modConfig["mainToggles"]["obontosAskForMoreStuff"]:
		l("Initializing habitat trades [mainToggles -> obontosAskForMoreStuff]")
		replaceScene("comms/conversation/HabitatConversation.tscn")
		l("Loaded habitat trades")

func attachModCompat(): # Mod-based event additions
	# Add modded equipment to the pool for vanilla ships (not likely gonna support modded ships outside of variants due to my free time)
	if modConfig["otherSupportedModFunctionalities"]["addModdedEquipmentToShipDefaults"] and modConfig["mainToggles"]["expandShipEquipmentOptions"] and modConfig["this is"]["a disabled feature"]:
		l("Adding modded equipment to ship loadouts")
		if KTI_MPR_RCS:
			installScriptExtension("modded/KTI-THRUSTERS/MPR-RCS/Shipyard.gd")
			l("Added KTI MPR RCS to ship equipment pool")
		if KTI_MPR_TORCH:
			installScriptExtension("modded/KTI-THRUSTERS/MPR-TORCH/Shipyard.gd")
			l("Added KTI MPR Torch to ship equipment pool")
		if KTI_MTR_RCS:
			installScriptExtension("modded/KTI-THRUSTERS/MTR-RCS/Shipyard.gd")
			l("Added KTI MTR RCS to ship equipment pool")
		if MOAR_RADARS:
			installScriptExtension("modded/MoarRADARS/Shipyard.gd")
			l("Added Moar RADARS to ship equipment pool")
		if NTCED:
			installScriptExtension("modded/NTCED/Shipyard.gd")
			l("Added NTCED to ship equipment pool")
		if BOOTLEG_PDT:
			installScriptExtension("modded/BootlegPDT/Shipyard.gd")
			l("Added Bootleg PDT Laser to the ship equipment pool")
	if modConfig["otherSupportedModFunctionalities"]["addModdedEquipmentToShipDefaults"] and not modConfig["mainToggles"]["expandShipEquipmentOptions"] and modConfig["this is"]["a disabled feature"]:
		l("Error loading modded equipment to ship equipment features. [expandShipEquipmentOptions] is not enabled")
		
	if KTI_KITSUMO and modConfig["supportedEventsFromMods"]["KTI-Kitsumo"]:
		replaceScene("modded/KTI-Kitsumo/story/TheRing.tscn","res://story/TheRing.tscn")
		l("Loaded mod supported events for the mod [K-Tech Industrial - Kitsumo]")
	if KTI_COTHON_MKII and modConfig["supportedEventsFromMods"]["KTI-CothonMkII"]:
		replaceScene("modded/KTI-CothonMkII/story/TheRing.tscn","res://story/TheRing.tscn")
		l("Loaded mod supported events for the mod [K-Tech Industrial - Cothon Mk II]")
	if KTI_225 and modConfig["supportedEventsFromMods"]["KTI-K225"]:
		replaceScene("modded/KTI-K225/story/TheRing.tscn","res://story/TheRing.tscn")
		l("Loaded mod supported events for the mod [K-Tech Industrial - K225-KTI]")
	if KTI_K_SERIES and modConfig["supportedEventsFromMods"]["KTI-KSeries"]:
		replaceScene("modded/KTI-KSeries/story/TheRing.tscn","res://story/TheRing.tscn")
		l("Loaded mod supported events for the mod [K-Tech Industrial - K-Series]")
	if KTI_OCP and modConfig["supportedEventsFromMods"]["KTI-OCP"]:
		replaceScene("modded/KTI-OCP/story/TheRing.tscn","res://story/TheRing.tscn")
		l("Loaded mod supported events for the mod [K-Tech Industrial - OCP]")
	if DRONE_OCP and modConfig["supportedEventsFromMods"]["DroneOCP"]:
		replaceScene("modded/DroneOCP/story/TheRing.tscn","res://story/TheRing.tscn")
		l("Loaded mod supported events for the mod [Drone OCP]")
	if HEAVY_COTHON and modConfig["supportedEventsFromMods"]["HeavyCothon"]:
		replaceScene("modded/HeavyCothon/story/TheRing.tscn","res://story/TheRing.tscn")
		l("Loaded mod supported events for the mod [Heavy Cothon]")
	if INDUSTRIES_OF_ENCELADUS and modConfig["supportedEventsFromMods"]["IndustriesOfEnceladus"]:
		replaceScene("modded/IoE/story/TheRing.tscn","res://story/TheRing.tscn")
		l("Loaded mod supported events for the mod [Industries of Enceladus]")
	
	# Compatability for Derelict Delights features using stuff from other mods
	# Add IoE containers to the request container options
	if modConfig["otherSupportedModFunctionalities"]["IoERequestContainer"] and modConfig["mainToggles"]["requestNewContainers"]:
		l("Initializing IoE container request addition to the [requestNewContainers] feature")
		replaceScene("modded/IoE/story/DynaContainerEvent.tscn","res://story/TheRing.tscn")
		replaceScene("modded/IoE/comms/conversation/subtrees/DIALOG_STORAGE_RETURNING_1.tscn","res://comms/conversation/subtrees/DIALOG_STORAGE_RETURNING_1.tscn")
		l("Loaded IoE container request extension to Derelict Delights' [requestNewContainers] feature")
	
	if modConfig["otherSupportedModFunctionalities"]["IoERequestContainer"] and not modConfig["mainToggles"]["requestNewContainers"]:
		l("Error loading IoE container request additions to Derelict Delights features. [requestNewContainers] is not enabled")
		
	# Add modded ships to the pool for purchasing ships from pirates
	if modConfig["otherSupportedModFunctionalities"]["addModdedShipsToPiratePool"] and modConfig["mainToggles"]["addEvents"]:
		l("Initializing support for pirate trading of ships")
		if INDUSTRIES_OF_ENCELADUS:
			replaceScene("modded/IoE/comms/conversation/subtrees/DIALOG_PIRATE_SUPPORT.tscn","res://comms/conversation/subtrees/DIALOG_PIRATE_SUPPORT.tscn")
		if KTI_225:
			replaceScene("modded/KTI-K225/comms/conversation/subtrees/DIALOG_PIRATE_SUPPORT.tscn","res://comms/conversation/subtrees/DIALOG_PIRATE_SUPPORT.tscn")
		if KTI_COTHON_MKII:
			replaceScene("modded/KTI-CothonMkII/comms/conversation/subtrees/DIALOG_PIRATE_SUPPORT.tscn","res://comms/conversation/subtrees/DIALOG_PIRATE_SUPPORT.tscn")
		if KTI_K_SERIES:
			replaceScene("modded/KTI-KSeries/comms/conversation/subtrees/DIALOG_PIRATE_SUPPORT.tscn","res://comms/conversation/subtrees/DIALOG_PIRATE_SUPPORT.tscn")
		if KTI_OCP:
			replaceScene("modded/KTI-OCP/comms/conversation/subtrees/DIALOG_PIRATE_SUPPORT.tscn","res://comms/conversation/subtrees/DIALOG_PIRATE_SUPPORT.tscn")
		if DRONE_OCP:
			replaceScene("modded/DroneOCP/comms/conversation/subtrees/DIALOG_PIRATE_SUPPORT.tscn","res://comms/conversation/subtrees/DIALOG_PIRATE_SUPPORT.tscn")
		if HEAVY_COTHON:
			replaceScene("modded/HeavyCothon/comms/conversation/subtrees/DIALOG_PIRATE_SUPPORT.tscn","res://comms/conversation/subtrees/DIALOG_PIRATE_SUPPORT.tscn")
		if ZKY and modConfig["this is"]["a disabled feature"]:
			replaceScene("modded/ZKY/comms/conversation/subtrees/DIALOG_PIRATE_SUPPORT.tscn","res://comms/conversation/subtrees/DIALOG_PIRATE_SUPPORT.tscn")
		
	if modConfig["otherSupportedModFunctionalities"]["addModdedShipsToPiratePool"] and not modConfig["mainToggles"]["addEvents"]:
		l("Error loading modded pirate trades. [addEvents] is not enabled")
	
	if ZKY and modConfig["supportedEventsFromMods"]["ZKY"] and modConfig["mainToggles"]["addEvents"]:
		l("Starting ZKY specific event handling")
		loadZKYSpecificSettings()
		if ZKYConfig["additions"]["addShips"]:
			l("")
		if ZKYConfig["additions"]["addEvents"]:
			l("")
		if ZKYConfig["sillyStuff"]["addATK222222225"]:
			l("")
		if ZKYConfig["sillyStuff"]["addATK225-HH"]:
			l("")
		if ZKYConfig["sillyStuff"]["addNyanShip"]:
			l("")




# Do stuff on ready
# At this point all AutoLoads are available and the game is loaded
func _ready():
	l("Readying")
	l("Ready")
	
func loadSettings():
	l(MOD_NAME + ": Loading mod settings")
	var settings = load("res://Settings.gd").new()
	settings.loadDDFromFile()
	settings.saveDDToFile()
	modConfig = settings.DDConfig
	l(MOD_NAME + ": Current settings: %s" % modConfig)
	settings.queue_free()
	l(MOD_NAME + ": Finished loading settings")
	
func loadZKYSpecificSettings():
	Debug.l(MOD_NAME + ": Loading ZKY settings")
	var settings = load("res://Settings.gd").new()
	settings.loadZKYFromFile()
	settings.saveZKYToFile()
	ZKYConfig = settings.ZKYConfig
	Debug.l(MOD_NAME + ": Current ZKY settings: %s" % ZKYConfig)
	settings.queue_free()
	Debug.l(MOD_NAME + ": Finished loading ZKY settings")

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

func dynamicModVerification():
	l("Dynamic Mod Verification Enabled")
	if listModZipFiles.has("BootlegPDT-Laser.zip"):
		BOOTLEG_PDT = true
		l("Bootleg Industries PDT Laser registered")
	if listModZipFiles.has("DroneOCP.zip"):
		DRONE_OCP = true
		l("Drone OCP found and registered")
	if listModZipFiles.has("NTCED.Parts.Pack.v1.1.1.zip"):
		NTCED = true
		l("NTCED Parts Pack registered")
	if listModZipFiles.has("HeavyCothon.zip"):
		HEAVY_COTHON = true
		l("Heavy Cothon registered")
	if listModZipFiles.has("IndustriesOfEnceladusRevamp.zip") or listModZipFiles.has("IndustriesOfEnceladusRevamp.1.7.5.zip"):
		INDUSTRIES_OF_ENCELADUS = true
		l("Industries of Enceladus registered")
	if listModZipFiles.has("K-T Industrial Cothon Mk2.zip"):
		KTI_COTHON_MKII = true
		l("K-Tech Cothon MkII registered")
	if listModZipFiles.has("K-T Industrial K225-KTI.zip"):
		KTI_225 = true
		l("K-Tech K225-KTI registered")
	if listModZipFiles.has("K-T Industrial Kitsumo.zip"):
		KTI_KITSUMO = true
		l("K-Tech Kitsumo registered")
	if listModZipFiles.has("K-T Industrial K-Series.zip"):
		KTI_K_SERIES = true
		l("K-Tech K-Series registered")
	if listModZipFiles.has("K-T Industrial KTI-MPR RCS.zip"):
		KTI_MPR_RCS = true
		l("K-Tech MPR RCS registered")
	if listModZipFiles.has("K-T Industrial KTI-MPR Torch.zip"):
		KTI_MPR_TORCH = true
		l("K-Tech MPR Torch registered")
	if listModZipFiles.has("K-T Industrial KTI-MTR RCS.zip"):
		KTI_MTR_RCS = true
		l("K-Tech MTR RCS registered")
	if listModZipFiles.has("K-T Industrial OCP230-KTI.zip"):
		KTI_OCP = true
		l("K-Tech OCP-230 registered")
	if listModZipFiles.has("Moar.RADARs.zip"):
		MOAR_RADARS = true
		l("Moar RADARs registered")
	if listModZipFiles.has("ZKY.zip"):
		ZKY = true
		l("ZKY registered")

func nonDynamicHandling():
	l("Dynamic handling of mod support disabled, falling back to predefined configurations.")
	if modConfig["DDEventLoaderSettings"]["forceDroneOCP"]:
		l("Forcing configs for Drone OCP")
		DRONE_OCP = true
	if modConfig["DDEventLoaderSettings"]["forceBootlegPDT"]:
		l("Forcing configs for Bootleg PDT")
		BOOTLEG_PDT = true
	if modConfig["DDEventLoaderSettings"]["forceNTCED"]:
		l("Forcing configs for NTCED")
		NTCED = true
	if modConfig["DDEventLoaderSettings"]["forceHeavyCothon"]:
		l("Forcing configs for Heavy Cothon")
		HEAVY_COTHON = true
	if modConfig["DDEventLoaderSettings"]["forceIoE"]:
		l("Forcing configs for Industries of Enceladus")
		INDUSTRIES_OF_ENCELADUS = true
	if modConfig["DDEventLoaderSettings"]["forceKTICothonMkII"]:
		l("Forcing configs for K-Tech Cothon MkII")
		KTI_COTHON_MKII = true
	if modConfig["DDEventLoaderSettings"]["forceKTI225"]:
		l("Forcing configs for K-Tech 225-KTI")
		KTI_225 = true
	if modConfig["DDEventLoaderSettings"]["forceKTIKitsumo"]:
		l("Forcing configs for K-Tech Kitsumo")
		KTI_KITSUMO = true
	if modConfig["DDEventLoaderSettings"]["forceKTIKSeries"]:
		l("Forcing configs for K-Tech K-Series")
		KTI_K_SERIES = true
	if modConfig["DDEventLoaderSettings"]["forceKTIMPRRCS"]:
		l("Forcing configs for K-Tech MPR RCS")
		KTI_MPR_RCS = true
	if modConfig["DDEventLoaderSettings"]["forceKTIMPRTorch"]:
		l("Forcing configs for K-Tech MPR Torch")
		KTI_MPR_TORCH = true
	if modConfig["DDEventLoaderSettings"]["forceKTIMTRRCS"]:
		l("Forcing configs for K-Tech MTR RCS")
		KTI_MTR_RCS = true
	if modConfig["DDEventLoaderSettings"]["forceKTIOCP"]:
		l("Forcing configs for K-Tech OCP-230")
		KTI_OCP = true
	if modConfig["DDEventLoaderSettings"]["forceMoarRADARs"]:
		l("Forcing configs for Moar RADARs")
		MOAR_RADARS = true
	if modConfig["DDEventLoaderSettings"]["forceZKY"]:
		l("Forcing configs for ZKY")
		ZKY = true


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
	

var listModZipFiles = []

func modsInstalled():
	var gameInstallDirectory = OS.get_executable_path().get_base_dir()
	if OS.get_name() == "OSX":
		gameInstallDirectory = gameInstallDirectory.get_base_dir().get_base_dir().get_base_dir()
	var modPathPrefix = gameInstallDirectory.plus_file("mods")
	l(MOD_NAME + ": Scanning contents of the mods folder")
	var dir = Directory.new()
	dir.open(modPathPrefix)
	var dirName = dir.get_current_dir()
	dir.list_dir_begin(true)
	while true:
		var fileName = dir.get_next()
		dirName = dir.get_current_dir()
		l(fileName)
		if fileName == "":
			break
		if dir.current_is_dir():
			continue
		var modFSPath = modPathPrefix.plus_file(fileName)
		var modGlobalPath = ProjectSettings.globalize_path(modFSPath)
		if not ProjectSettings.load_resource_pack(modGlobalPath, true):
			l(MOD_NAME + ": %s failed to confirm." % fileName)
			continue
		var trueFileName = modFSPath.split("/")
		var trueFileNameLength = trueFileName.size()
		var getTrueFileName = trueFileName[trueFileNameLength - 1]
		listModZipFiles.append(getTrueFileName)
		l(MOD_NAME + ": %s found." % fileName)
	l(MOD_NAME + ": Finished scan of mod folder.")
