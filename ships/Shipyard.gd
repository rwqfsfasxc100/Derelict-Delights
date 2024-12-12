extends "res://ships/Shipyard.gd"

var DDUsedShips["COTHON"] = {
	[
		{
		"weaponSlot":{
			"right":{
				"type":"SYSTEM_EINAT"
			}, 
			"left":{
				"type":"SYSTEM_EINAT"
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
			"capacity":80000.0, 
			"initial":80000.0, 
		}, 
		"capacitor":{
			"capacity":500.0, 
		}, 
		"turbine":{
			"power":200.0, 
		}, 
		"shielding":{
			"emp":0, 
		}, 
		"cargo":{
			"equipment":"SYSTEM_CARGO_STANDARD"
		}, 
		"autopilot":{
			"type":"SYSTEM_AUTOPILOT_MK3"
		}, 
		"propulsion":{
			"main":"SYSTEM_MAIN_ENGINE_PNTR", 
			"rcs":"SYSTEM_THRUSTER_NDSTR"
		}
	}, 
	{
		"weaponSlot":{
			"right":{
				"type":"SYSTEM_NANI"
			}, 
			"left":{
				"type":"SYSTEM_NANI"
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
			"capacity":80000.0, 
			"initial":80000.0, 
		}, 
		"capacitor":{
			"capacity":500.0, 
		}, 
		"turbine":{
			"power":200.0, 
		}, 
		"shielding":{
			"emp":0, 
		}, 
		"cargo":{
			"equipment":"SYSTEM_CARGO_STANDARD"
		}, 
		"autopilot":{
			"type":"SYSTEM_AUTOPILOT_MK3"
		}, 
		"propulsion":{
			"main":"SYSTEM_MAIN_ENGINE_PNTR", 
			"rcs":"SYSTEM_THRUSTER_MA150HO"
		}
		}
	]
}

func _ready():
  usedShipConfigs.merge(DDUsedShips)
