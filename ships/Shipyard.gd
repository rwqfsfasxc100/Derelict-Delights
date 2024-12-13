extends "res://ships/Shipyard.gd"

var DDUsedShips = {
	"COTHON":[
		{
		"weaponSlot":{
			"right":{
				"type":"SYSTEM_MWG"
				}, 
			"left":{
				"type":"SYSTEM_MWG"
				}
			}, 
		"reactor":{
			"power":8.0
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
			"capacity":1000.0, 
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
				"type":"SYSTEM_CL600P"
				}, 
			"left":{
				"type":"SYSTEM_CL600P"
				},
			"rightBack":{
				"type":"SYSTEM_EXSTORAGE-R"
				},
			"leftBack":{
				"type":"SYSTEM_EXSTORAGE-L"
				}
			}, 
		"reactor":{
			"power":30.0
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
			"capacity":1500.0, 
			}, 
		"turbine":{
			"power":500.0, 
			}, 
		"aux":{
			"power":"SYSTEM_AUX_SMES_MK2"
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
			"main":"SYSTEM_MAIN_ENGINE_BWMT535", 
			"rcs":"SYSTEM_THRUSTER_MA150HO"
			}
		}, 
		{
		"weaponSlot":{
			"right":{
				"type":"SYSTEM_DND_HAUL"
				}, 
			"left":{
				"type":"SYSTEM_PDMWG-L"
				}
			}, 
		"reactor":{
			"power":20.0
			}, 
		"ammo":{
			"capacity":0.0, 
			"initial":0.0, 
			}, 
		"drones":{
			"capacity":5000.0, 
			"initial":5000.0
			}, 
		"fuel":{
			"capacity":50000.0, 
			"initial":50000.0, 
			}, 
		"capacitor":{
			"capacity":1000.0, 
			}, 
		"turbine":{
			"power":200.0, 
			},
		"shielding":{
			"emp":0, 
			}, 
		"cargo":{
			"equipment":"SYSTEM_CARGO_MPUFSO"
			}, 
		"autopilot":{
			"type":"SYSTEM_AUTOPILOT_MK3z"
			}, 
		"propulsion":{
			"main":"SYSTEM_MAIN_ENGINE_BWMT535", 
			"rcs":"SYSTEM_THRUSTER_MA150HO"
			}
		}
	]
}

func _ready():
  usedShipConfigs.merge(DDUsedShips, true)
