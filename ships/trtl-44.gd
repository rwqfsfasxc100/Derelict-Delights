extends "res://ships/Shipyard.gd"

func _ready():
	usedShipConfigs.append_array(TRTL_44, true)

var TRTL_44 = {
	"TRTL-44":[
		{
			"autopilot":{
				"type":"SYSTEM_AUTOPILOT_MK3"
			}, 
			"capacitor":{
				"capacity":1500.0
			}, 
			"drones":{
				"initial":0.0, 
				"capacity":0.0
			}, 
			"fuel":{
				"capacity":30000.0, 
				"initial":30000.0
			}, 
			"propulsion":{
				"main":"SYSTEM_MAIN_ENGINE_EIZAP", 
				"rcs":"SYSTEM_THRUSTER_EIT"
			}, 
			"ammo":{
				"capacity":0.0, 
				"initial":0.0
			}, 
			"hud":{
				"type":"SYSTEM_HUD_TNTRL"
			}, 
			"reactor":{
				"power":8.0
			}, 
			"drone":{
				"scanner":"SYSTEM_RD_STANDARD"
			},
			"aux":{
				"power":"SYSTEM_AUX_SMES"
			},
			"cargo":{
				"equipment":"SYSTEM_CARGO_MPU"
			}, 
			"lidar":{
				"type": "SYSTEM_LIDAR_DOPPLER_HIRES"
			},
			"turbine":{
				"power":500.0
			}, 
			"weaponSlot":{
				"left":{
					"type":"SYSTEM_PDMWG-L"
				}, 
				"right":{
					"type":"SYSTEM_PDMWG-R"
				},
				"leftBack":{
					"type":"SYSTEM_EXSTORAGE-L"
				}, 
				"rightback":{
					"type":"SYSTEM_EXSTORAGE-R"
				}
			}
		}, 
		{
			"autopilot":{
				"type":"SYSTEM_AUTOPILOT_MK3"
			}, 
			"capacitor":{
				"capacity":1500.0
			}, 
			"drones":{
				"initial":0.0, 
				"capacity":0.0
			}, 
			"fuel":{
				"capacity":30000.0, 
				"initial":30000.0
			}, 
			"propulsion":{
				"main":"SYSTEM_MAIN_ENGINE_K44", 
				"rcs":"SYSTEM_THRUSTER_GHET"
			}, 
			"ammo":{
				"capacity":0.0, 
				"initial":0.0
			}, 
			"hud":{
				"type":"SYSTEM_HUD_TNTRL"
			}, 
			"reactor":{
				"power":8.0
			}, 
			"drone":{
				"scanner":"SYSTEM_RD_STANDARD"
			},
			"aux":{
				"power":"SYSTEM_AUX_SMES"
			},
			"cargo":{
				"equipment":"SYSTEM_CARGO_MPU"
			}, 
			"lidar":{
				"type": "SYSTEM_LIDAR_RADAR"
			},
			"turbine":{
				"power":1500.0
			}, 
			"weaponSlot":{
				"left":{
					"type":"SYSTEM_PDMWG-L"
				}, 
				"right":{
					"type":"SYSTEM_PDMWG-R"
				},
				"leftBack":{
					"type":"SYSTEM_PDMWG-L"
				}, 
				"rightback":{
					"type":"SYSTEM_PDMWG-R"
				}
			}
		}
		
	]
}
