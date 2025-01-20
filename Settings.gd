extends "res://Settings.gd"

# Mod version
const DD_VERSION = "1.3.4"

# Default config values
var DDConfig = {
	"gameTweaks":{
		"requestNewContainers":true,
		"obontosAskForMoreStuff":true,
		"expandShipEquipmentOptions":true,
	}, 
	"additions":{
		"addEquipment":true,
		"addEvents":true,
		"addAgenda":true,
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
