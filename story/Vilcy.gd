extends "story/Vilcy.gd".makePirate

_ready():
  cfg.merge(ganymedeTRTL, true)

var ganymedeTRTL = [
    {
		"weaponSlot":{
			"main":{
				"type":"SYSTEM_NANI"
			}
		}, 
		"ammo":{
			"capacity":1000.0, 
			"initial":1000.0, 
		}, 
		"drones":{
			"initial":0.0, 
			"capacity":0.0, 
		}, 
		"fuel":{
			"capacity":30000.0, 
			"initial":30000.0, 
		}, 
		"capacitor":{
			"capacity":500.0, 
		}, 
		"turbine":{
			"capacity":100.0, 
			"power":100.0, 
		}, 
		"shielding":{
			"emp":0, 
		}, 
		"cargo":{
			"equipment":"SYSTEM_CARGO_STANDARD"
		}, 
		"autopilot":{
			"type":"SYSTEM_AUTOPILOT_MK1"
		}
	}
]
