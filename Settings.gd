extends "res://Settings.gd"

# Mod version
const DD_VERSION = "1.4.0"

# Default config values
var DDConfig = {
	"additions":{
		"NOTE -":"- Adds features from the mod. By default, addModSupport is disabled as it still isn't completely ironed out.",
		"addEquipment":true,
		"addEvents":true,
		"addAgenda":true,
		"addModSupport":false,
	}, 
	"gameTweaks":{
		"NOTE -":"- Adds tweaks or added depth to vanilla features that don't follow the direct addition of features that are added by this mod",
		"requestNewContainers":true,
		"obontosAskForMoreStuff":true,
#		"expandShipEquipmentOptions":true, disabled for now, this is more so a minor QOL feature that no one is really gonna see
	}, 
	"supportedEventsFromMods":{
		"NOTE -":"- These are event toggles for their respective mods, separated as they're the main feature from the automatic mod compatability feature, requires addEvents to work",
		"IndustriesOfEnceladus":true,
		"KTI-Kitsumo":true,
		"KTI-CothonMkII":true,
		"KTI-K225":true,
		"KTI-KSeries":true,
		"KTI-OCP":true,
		"DroneOCP":true,
		"HeavyCothon":true,
		"ZKY":true,
	},
	"otherSupportedModFunctionalities":{
		"NOTE -":"- These are additional settings in relation to the main feature toggle. All require additional toggles from the base mod to function, check the logs or upload this config to the mod's Discord thread if you have an issue",
		"IoERequestContainer":true,
		"addModdedShipsToPiratePool":true,
		"addModdedEquipmentToShipDefaults":true,
	},
	"DDEventLoaderSettings":{
		"NOTE -":"- These settings are for debugging. These force a specific mod's compatability to run. A main toggle is handled by the disableDynamicEnablingAndForceModFunctionality flag.",
		"disableDynamicEnablingAndForceModFunctionality":false,
		"forceDroneOCP":false,
		"forceBootlegPDT":false,
		"forceNTCED":false,
		"forceHeavyCothon":false,
		"forceIoE":false,
		"forceKTICothonMkII":false,
		"forceKTI225":false,
		"forceKTIKitsumo":false,
		"forceKTIKSeries":false,
		"forceKTIMPRRCS":false,
		"forceKTIMPRTorch":false,
		"forceKTIMTRRCS":false,
		"forceKTIOCP":false,
		"forceMoarRADARs":false,
		"forceZKY":false,
	},
	"Expected Mod Zip File Names":{
		"NOTE -":"- This is just a reference. Changing these currently will not affect if your mod file will load, rather what the expected filename is.",
		"NOTE 2 -":"- These default names come from each mod's respective Github, they may differ if obtained via another launcher",
		"NOTE 3 -":"- Delete this entire section if a mod's zip file no longer works, both this mod and any mods currently trying to be loaded may have updated, so deleting will update the list",
		"Bootleg PDT Laser ":" BootlegPDT-Laser.zip",
		"Drone OCP ":" DroneOCP.zip",
		"Heavy Cothon ":" HeavyCothon.zip",
		"Industries of Enceladus ":" IndustriesOfEnceladusRevamp.1.7.5.zip (SPDX Latest) OR IndustriesOfEnceladusRevamp.zip (HEV Compatability Rewrite Current)",
		"K-Tech Industrial Shipyard Cothon Mk II ":" K-T Industrial Cothon Mk2.zip",
		"K-Tech Industrial Shipyard K225-KTI ":" K-T Industrial K225-KTI.zip",
		"K-Tech Industrial Shipyard Kitsumo ":" K-T Industrial Kitsumo.zip",
		"K-Tech Industrial Shipyard K-Series ":" K-T Industrial K-Series.zip",
		"K-Tech Industrial Shipyard OCP-230 ":" K-T Industrial OCP230-KTI.zip",
		"K-Tech Industrial Jet Labs MPR RCS ":" K-T Industrial KTI-MPR RCS.zip",
		"K-Tech Industrial Jet Labs MPR Torch ":" K-T Industrial KTI-MPR Torch.zip",
		"K-Tech Industrial Jet Labs MTR RCS ":" K-T Industrial KTI-MTR RCS.zip",
		"Moar RADARs ":" Moar.RADARs.zip",
		"NTCED Parts Pack ":" NTCED.Parts.Pack.v1.1.1.zip",
		"ZKY ":" ZKY.zip",
	},
}


var DDPath = "user://DDsettings.cfg"
var DDFile = ConfigFile.new()

func _ready():
	loadDDFromFile()
	saveDDToFile()


func saveDDToFile():
	for section in DDConfig:
		for key in DDConfig[section]:
			DDFile.set_value(section, key, DDConfig[section][key])
	DDFile.save(DDPath)


func loadDDFromFile():
	var error = DDFile.load(DDPath)
	if error != OK:
		Debug.l("Derelict Delights: Error loading settings %s" % error)
		return 
	for section in DDConfig:
		for key in DDConfig[section]:
			DDConfig[section][key] = DDFile.get_value(section, key, DDConfig[section][key])
	#loadDDKeymapFromConfig()

# Disabled due to no keybind-based changes
#func loadDDKeymapFromConfig():
#	for action_name in DDConfig.input:
#		InputMap.add_action(action_name)
#		for key in DDConfig.input[action_name]:
#			var event = InputEventKey.new()
#			event.scancode = OS.find_scancode_from_string(key)
#			InputMap.action_add_event(action_name, event)
#	emit_signal("controlSchemeChaged")
