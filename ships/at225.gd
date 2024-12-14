extends "res://ships/Shipyard.gd"

func _ready():
	usedShipConfigs.merge(AT225, true)

var AT225 = {
	"AT225":[
		{
		"ammo": {
			"capacity": 0,
			"initial": 0
		},
		"autopilot": {
			"type": "SYSTEM_AUTOPILOT_RTYPE"
		},
		"aux": {
			"power": "SYSTEM_NONE"
		},
		"capacitor": {
			"capacity": 1500
		},
		"cargo": {
			"equipment": "SYSTEM_CARGO_MPUFSO"
		},
		"drones": {
			"capacity": 50000.0,
			"initial": 50000.0
		},
		"fuel": {
			"capacity": 500000,
			"initial": 500000
		},
		"hud":{
			"type": "SYSTEM_HUD_AT225"
		},
		"drone": {
			"scanner": "SYSTEM_RD_GRAVIMETRIC"
		},
		"lidar": {
			"type": "SYSTEM_LIDAR_DOPPLER"
		},
		"propulsion": {
			"main": "SYSTEM_MAIN_ENGINE_K44",
			"rcs": "SYSTEM_THRUSTER_NDSTR"
		},
		"reactor": {
			"power": 30
		},
		"turbine": {
			"power": 500
		},
		"weaponSlot": {
			"leftBay1":{
				"type": "SYSTEM_DND_HAUL"
			},
			"leftBay2": {
				"type": "SYSTEM_EXMONO-L"
			},
			"leftBay3": {
				"type": "SYSTEM_EXMONO-L"
			},
			"middleLeft": {
				"type": "SYSTEM_PDMWG"
			},
			"middleRight": {
				"type": "SYSTEM_PDMWG"
			},
			"rightBay1": {
				"type": "SYSTEM_DND_HAUL"
			},
			"rightBay2": {
				"type": "SYSTEM_EXMONO-R"
			},
			"rightBay3": {
				"type": "SYSTEM_EXMONO-R"
			}
		}
	},
	{
		"ammo": {
			"capacity": 0,
			"initial": 0
		},
		"autopilot": {
			"type": "SYSTEM_AUTOPILOT_RTYPE"
		},
		"aux": {
			"power": "SYSTEM_NONE"
		},
		"capacitor": {
			"capacity": 1500
		},
		"cargo": {
			"equipment": "SYSTEM_CARGO_MPUFSO"
		},
		"drones": {
			"capacity": 50000.0,
			"initial": 50000.0
		},
		"fuel": {
			"capacity": 500000,
			"initial": 500000
		},
		"hud":{
			"type": "SYSTEM_HUD_AT225"
		},
		"drone": {
			"scanner": "SYSTEM_RD_SPECTROMETER"
		},
		"lidar": {
			"type": "SYSTEM_LIDAR_DOPPLER"
		},
		"propulsion": {
			"main": "SYSTEM_MAIN_ENGINE_K44",
			"rcs": "SYSTEM_THRUSTER_NDSTR"
		},
		"reactor": {
			"power": 30
		},
		"turbine": {
			"power": 500
		},
		"weaponSlot": {
			"leftBay1":{
				"type": "SYSTEM_DND_HAUL"
			},
			"leftBay2": {
				"type": "SYSTEM_EXSTORAGE-L"
			},
			"leftBay3": {
				"type": "SYSTEM_EXSTORAGE-L"
			},
			"middleLeft": {
				"type": "SYSTEM_PDMWG"
			},
			"middleRight": {
				"type": "SYSTEM_PDMWG"
			},
			"rightBay1": {
				"type": "SYSTEM_DND_HAUL"
			},
			"rightBay2": {
				"type": "SYSTEM_EXSTORAGE-R"
			},
			"rightBay3": {
				"type": "SYSTEM_EXSTORAGE-R"
			}
		}
	}
	]
}
