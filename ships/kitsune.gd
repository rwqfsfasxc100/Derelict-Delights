extends "res://ships/Shipyard.gd"

func _ready():
	usedShipConfigs.merge(KITSUNE)

var KITSUNE = {
	"KITSUNE":[
		{
			"hud":{
				"type":"SYSTEM_HUD_KITSUNE"
			}, 
			"weaponSlot":{
				"mainLow":{
					"type":"SYSTEM_RAILTOR"
					}
			}, 
			"reactor":{
				"power":8.0
			}, 
			"ammo":{
				"capacity":1000.0, 
				"initial":1000.0, 
			}, 
			"drones":{
				"capacity":0.0, 
				"initial":0.0
			}, 
			"fuel":{
				"capacity":15000.0, 
				"initial":15000.0, 
			}, 
			"capacitor":{
				"capacity":1000.0, 
			}, 
			"turbine":{
				"power":200.0, 
			}, 
			"drone":{
				"scanner":"SYSTEM_RD_GRAVIMETRIC"
			},
			"autopilot":{
				"type":"SYSTEM_AUTOPILOT_MK3"
			}, 
			"propulsion":{
				"rcs":"SYSTEM_THRUSTER_MA150HO"
			}, 
			"aux":{
				"power":"SYSTEM_AUX_SMES"
			},
			"cargo":{
				"equipment":"SYSTEM_CARGO_STANDARD"
			}, 
			"lidar":{
				"type": "SYSTEM_LIDAR_DOPPLER"
			}
		},
		{
			"hud":{
				"type":"SYSTEM_HUD_KITSUNE"
			}, 
			"weaponSlot":{
				"mainLow":{
					"type":"SYSTEM_EINAT"
					}
			}, 
			"reactor":{
				"power":12.0
			}, 
			"ammo":{
				"capacity":0.0, 
				"initial":0.0, 
			}, 
			"drones":{
				"capacity":0.0, 
				"initial":0.0
			}, 
			"fuel":{
				"capacity":50000.0, 
				"initial":50000.0, 
			}, 
			"capacitor":{
				"capacity":1500.0, 
			}, 
			"turbine":{
				"power":500.0, 
			}, 
			"drone":{
				"scanner":"SYSTEM_RD_STANDARD"
			},
			"autopilot":{
				"type":"SYSTEM_AUTOPILOT_MK3"
			}, 
			"propulsion":{
				"rcs":"SYSTEM_THRUSTER_MA350HO"
			}, 
			"aux":{
				"power":"SYSTEM_AUX_SMES"
			},
			"cargo":{
				"equipment":"SYSTEM_CARGO_MPU"
			}, 
			"lidar":{
				"type": "SYSTEM_LIDAR_DOPPLER_CONE"
			}
		}
	]
}
