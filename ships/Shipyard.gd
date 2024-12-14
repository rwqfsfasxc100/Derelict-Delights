extends "res://ships/Shipyard.gd"

var thisTookWayTooLongToGetWorkingWhyIsJSONSoStingyAndCouldntThisHaveJustBeenDoneInATCSNToMakeTheEngineDoTheWorkInstead = {
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
			"type":"SYSTEM_AUTOPILOT_MK3"
			}, 
		"propulsion":{
			"main":"SYSTEM_MAIN_ENGINE_BWMT535", 
			"rcs":"SYSTEM_THRUSTER_MA150HO"
			}
		},
		{
		"ammo":{
			"capacity":0,
			"initial":0
		},
		"autopilot":{
			"type":"SYSTEM_AUTOPILOT_MK3"
		},
		"aux":{
			"power":"SYSTEM_NONE"
		},
		"capacitor":{
			"capacity":1000
		},
		"cargo":{
			"equipment":"SYSTEM_CARGO_STANDARD"
		},
		"drone":{
			"scanner":"SYSTEM_RD_GRAVIMETRIC"
		},
		"drones":{
			"capacity":20000,
			"initial":20000
		},
		"fuel":{
			"capacity":50000,
			"initial":50000
		},
		"hud":{
			"type":"SYSTEM_HUD_HAL"
		},
		"lidar":{
			"type":"SYSTEM_LIDAR_DOPPLER"
		},
		"propulsion":{
			"main":"SYSTEM_MAIN_ENGINE_BWMT535",
			"rcs":"SYSTEM_THRUSTER_NDVTT"
		},
		"reactor":{
			"power":12
		},
		"turbine":{
			"power":200
		},
		"weaponSlot":{
			"left":{
				"type":"SYSTEM_HUNK-L"
			},
			"leftBack":{
				"type":"SYSTEM_HUNK-L"
			},
			"right":{
				"type":"SYSTEM_ACL200P"
			},
			"rightBack":{
				"type":"SYSTEM_DND_HAUL"
			}
		}
	}
	],
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
	],
	"OCP209": [
	{
		"ammo":{
			"capacity":0,
			"initial":0
		},
		"autopilot":{
			"type":"SYSTEM_AUTOPILOT_MK3"
		},
		"aux":{
			"power":"SYSTEM_AUX_SMES"
		},
		"capacitor":{
			"capacity":1000
		},
		"cargo":{
			"equipment":"SYSTEM_CARGO_MPUSML"
		},
		"drone":{
			"scanner":"SYSTEM_RD_SPECTROMETER"
		},
		"drones":{
			"capacity":10000,
			"initial":10000
		},
		"fuel":{
			"capacity":200000,
			"initial":200000
		},
		"hud":{
			"type":"SYSTEM_HUD_OCP209"
		},
		"lidar":{
			"type":"SYSTEM_LIDAR_DOPPLER_HIRES"
		},
		"propulsion":{
			"main":"SYSTEM_MAIN_ENGINE_DFMPD2205",
			"rcs":"SYSTEM_THRUSTER_K69V"
		},
		"reactor":{
			"power":30
		},
		"turbine":{
			"power":200
		},
		"weaponSlot":{
			"mainLeft":{
				"type":"SYSTEM_SALVAGE_ARM"
			},
			"mainRight":{
				"type":"SYSTEM_SALVAGE_ARM"
			},
			"middleLeft":{
				"type":"SYSTEM_DND_HAUL"
			},
			"middleRight":{
				"type":"SYSTEM_ACL200P"
			}
		}
	},
	{
		"ammo":{
			"capacity":0,
			"initial":0
		},
		"autopilot":{
			"type":"SYSTEM_AUTOPILOT_MK3"
		},
		"aux":{
			"power":"SYSTEM_AUX_SMES"
		},
		"capacitor":{
			"capacity":1000
		},
		"cargo":{
			"equipment":"SYSTEM_CARGO_MPUSML"
		},
		"drone":{
			"scanner":"SYSTEM_RD_SPECTROMETER"
		},
		"drones":{
			"capacity":10000,
			"initial":10000
		},
		"fuel":{
			"capacity":200000,
			"initial":200000
		},
		"hud":{
			"type":"SYSTEM_HUD_OCP209"
		},
		"lidar":{
			"type":"SYSTEM_LIDAR_DOPPLER_HIRES"
		},
		"propulsion":{
			"main":"SYSTEM_MAIN_ENGINE_DFMPD2205",
			"rcs":"SYSTEM_THRUSTER_K44"
		},
		"reactor":{
			"power":40
		},
		"turbine":{
			"power":200
		},
		"weaponSlot":{
			"mainLeft":{
				"type":"SYSTEM_SALVAGE_ARM"
			},
			"mainRight":{
				"type":"SYSTEM_SALVAGE_ARM"
			},
			"middleLeft":{
				"type":"SYSTEM_DND_HAUL"
			},
			"middleRight":{
				"type":"SYSTEM_ACL200P"
			}
		}
	}
	],
	"PROSPECTOR-BALD":[
	{
		"ammo":{
			"capacity":5000,
			"initial":5000
		},
		"autopilot":{
			"type":"SYSTEM_AUTOPILOT_RTYPE"
		},
		"aux":{
			"power":"SYSTEM_AUX_MPD_MK2"
		},
		"capacitor":{
			"capacity":1500
		},
		"cargo":{
			"equipment":"SYSTEM_CARGO_MPU_FAB"
		},
		"drone":{
			"scanner":"SYSTEM_RD_STANDARD"
		},
		"drones":{
			"capacity":10000,
			"initial":10000
		},
		"fuel":{
			"capacity":50000,
			"initial":50000
		},
		"hud":{
			"type":"SYSTEM_HUD_OCP209"
		},
		"lidar":{
			"type":"SYSTEM_LIDAR_DOPPLER_HIRES"
		},
		"propulsion":{
			"main":"SYSTEM_MAIN_ENGINE_NPMP",
			"rcs":"SYSTEM_THRUSTER_K69V"
		},
		"reactor":{
			"power":50
		},
		"turbine":{
			"power":500
		},
		"weaponSlot":{
			"leftDrone":{
				"type":"SYSTEM_DND_FIX"
			},
			"rightDrone":{
				"type":"SYSTEM_DND_FIX"
			},
			"middleLeft":{
				"type":"SYSTEM_RAILTOR"
			},
			"middleRight":{
				"type":"SYSTEM_MWG"
			}
		}
	},
	{
		"ammo":{
			"capacity":0,
			"initial":0
		},
		"autopilot":{
			"type":"SYSTEM_AUTOPILOT_RTYPE"
		},
		"aux":{
			"power":"SYSTEM_AUX_MPD_MK3"
		},
		"capacitor":{
			"capacity":1500
		},
		"cargo":{
			"equipment":"SYSTEM_CARGO_MPU_FAB"
		},
		"drone":{
			"scanner":"SYSTEM_RD_STANDARD"
		},
		"drones":{
			"capacity":10000,
			"initial":10000
		},
		"fuel":{
			"capacity":200000,
			"initial":200000
		},
		"hud":{
			"type":"SYSTEM_HUD_OCP209"
		},
		"lidar":{
			"type":"SYSTEM_LIDAR_DOPPLER_HIRES"
		},
		"propulsion":{
			"main":"SYSTEM_MAIN_ENGINE_EIZAP",
			"rcs":"SYSTEM_THRUSTER_K69V"
		},
		"reactor":{
			"power":50
		},
		"turbine":{
			"power":500
		},
		"weaponSlot":{
			"leftDrone":{
				"type":"SYSTEM_DND_FIX"
			},
			"rightDrone":{
				"type":"SYSTEM_DND_FIX"
			},
			"middleLeft":{
				"type":"SYSTEM_DND_FIX"
			},
			"middleRight":{
				"type":"SYSTEM_DND_FIX"
			}
		}
	}
	]
}

func _ready():
  usedShipConfigs.merge(thisTookWayTooLongToGetWorkingWhyIsJSONSoStingyAndCouldntThisHaveJustBeenDoneInATCSNToMakeTheEngineDoTheWorkInstead, true)
