extends "res://ships/Shipyard.gd"

func _ready():
	usedShipConfigs.merge(EIME, true)

var EIME = {
	"EIME":[
		{
			"fuel":{
				"capacity":30000.0, 
				"initial":30000.0, 
			}, 
			"propulsion":{
				"main":"SYSTEM_MAIN_ENGINE_EIZAP", 
				"rcs":"SYSTEM_THRUSTER_AGILE"
			}, 
			"weaponSlot":{
				"main":{
					"type":"SYSTEM_EINAT"
				}, 
				"left":{
					"type":"SYSTEM_CL600P"
				}, 
				"right":{
					"type":"SYSTEM_DND_FIX"
				}, 
			}, 
			"ammo":{
				"capacity":0.0, 
				"initial":0.0
			}, 
			"drones":{
				"capacity":1000,
				"initial":1000
			},
			"cargo":{
				"equipment":"SYSTEM_CARGO_MPUFSO"
			},
			"drone":{
				"scanner":"SYSTEM_RD_STANDARD"
			},
			"autopilot":{
				"type":"SYSTEM_AUTOPILOT_MK4"
			},
			"lidar":{
				"type":"SYSTEM_LIDAR_DOPPLER_HIRES"
			},
			"capacitor":{
				"capacity":1000.0
			}, 
			"hud":{
				"type":"SYSTEM_HUD_EIME"
			},
			"aux":{
				"power":"SYSTEM_AUX_SMES_MK3"
			},
			"turbine":{
				"power":1000.0
			}
		},
		{
			"fuel":{
				"capacity":30000.0, 
				"initial":30000.0, 
			}, 
			"propulsion":{
				"main":"SYSTEM_MAIN_ENGINE_EIZAP", 
				"rcs":"SYSTEM_THRUSTER_AGILE"
			}, 
			"weaponSlot":{
				"main":{
					"type":"SYSTEM_DND_FIX"
				}, 
				"left":{
					"type":"SYSTEM_CL600P"
				}, 
				"right":{
					"type":"SYSTEM_CL600P"
				}, 
			}, 
			"ammo":{
				"capacity":0.0, 
				"initial":0.0
			}, 
			"drones":{
				"capacity":1000,
				"initial":1000
			},
			"cargo":{
				"equipment":"SYSTEM_CARGO_MPUFSO"
			},
			"drone":{
				"scanner":"SYSTEM_RD_STANDARD"
			},
			"autopilot":{
				"type":"SYSTEM_AUTOPILOT_MK4"
			},
			"lidar":{
				"type":"SYSTEM_LIDAR_DOPPLER_HIRES"
			},
			"capacitor":{
				"capacity":1500.0
			}, 
			"hud":{
				"type":"SYSTEM_HUD_EIME"
			},
			"aux":{
				"power":"SYSTEM_AUX_SMES_MK3"
			},
			"turbine":{
				"power":1000.0
			}
		}
	]
}
