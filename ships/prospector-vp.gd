extends "res://ships/Shipyard.gd"

func _ready():
	usedShipConfigs["PROSPECTOR-VP"].append_array(PROSPECTOR_VULTURE)

var PROSPECTOR_VULTURE = [
		{
			"fuel":{
				"capacity":50000.0, 
				"initial":50000.0, 
			}, 
			"propulsion":{
				"main":"SYSTEM_MAIN_ENGINE_NMPD", 
				"rcs":"SYSTEM_THRUSTER_MA350HO"
			}, 
			"reactor":{
				"power":40.0
			}, 
			"weaponSlot":{
				"left":{
					"type":"SYSTEM_CL150"
				}, 
				"right":{
					"type":"SYSTEM_CL150"
				}, 
				"main":{
					"type":"SYSTEM_CL150"
				} 
			}, 
			"drones":{
				"capacity":0.0, 
				"initial":0.0
			}, 
			"ammo":{
				"capacity":0.0, 
				"initial":0.0
			}, 
			"autopilot":{
				"type":"SYSTEM_AUTOPILOT_MK2"
			}, 
			"capacitor":{
				"capacity":1500.0
			}, 
			"turbine":{
				"power":500.0
			},
			"hud":{
				"type":"SYSTEM_HUD_PROSPECTOR_METRIC"
			}, 
			"drone":{
				"scanner":"SYSTEM_RD_SPECTROMETER"
			},
			"aux":{
				"power":"SYSTEM_AUX_SMES"
			},
			"cargo":{
				"equipment":"SYSTEM_CARGO_MPU"
			}, 
			"lidar":{
				"type": "SYSTEM_LIDAR_DOPPLER_HIRES"
			}
		},
		{
			"fuel":{
				"capacity":50000.0, 
				"initial":50000.0, 
			}, 
			"propulsion":{
				"main":"SYSTEM_MAIN_ENGINE_NMPD", 
				"rcs":"SYSTEM_THRUSTER_MA350HO"
			}, 
			"reactor":{
				"power":40.0
			}, 
			"hud":{
				"type":"SYSTEM_HUD_PROSPECTOR_METRIC"
			}, 
			"weaponSlot":{
				"left":{
					"type":"SYSTEM_CL150"
				}, 
				"main":{
					"type":"SYSTEM_SALVAGE_ARM"
				}, 
				"right":{
					"type":"SYSTEM_CL150"
				}, 
			}, 
			"drones":{
				"capacity":0.0, 
				"initial":0.0
			}, 
			"ammo":{
				"capacity":0.0, 
				"initial":0.0
			}, 
			"autopilot":{
				"type":"SYSTEM_AUTOPILOT_MK3"
			}, 
			"capacitor":{
				"capacity":1500.0
			}, 
			"turbine":{
				"power":500.0
			},
			"drone":{
				"scanner":"SYSTEM_RD_SPECTROMETER"
			},
			"aux":{
				"power":"SYSTEM_AUX_SMES"
			},
			"cargo":{
				"equipment":"SYSTEM_CARGO_MPU"
			}, 
			"lidar":{
				"type": "SYSTEM_LIDAR_DOPPLER_HIRES"
			}
		}
	]
