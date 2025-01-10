extends "res://ships/Shipyard.gd"

var newConfigAlias = {
		"TRTL-LCB":"TRTL", 
		"TRTL-R":"TRTL", 
		"TRTL-T":"TRTL", 
		"TRTL-44":"TRTL-44", 
		"PROSPECTOR-VP":"PROSPECTOR-VP", 
		"PROSPECTOR-LUX":"PROSPECTOR", 
		"PROSPECTOR-FAT":"PROSPECTOR", 
		"COTHON-CHK":"COTHON", 
		"COTHON-LND":"COTHON", 
		"COTHON-V":"COTHON", 
		"AT225-R":"AT225", 
		"AT225-B":"AT225", 
	}

func _ready():
	configAlias.merge(newConfigAlias)
