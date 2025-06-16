extends "res://ships/Shipyard.gd"

func _ready():
	usedShipConfigs["AT225"] = AT225

var AT225 = [
	{
			"weaponSlot":{
				"middleRight":{
					"type":"SYSTEM_EMD14"
				}, 
				"middleLeft":{
					"type":"SYSTEM_NONE"
				}, 
				"leftBay1":{
					"type":"SYSTEM_EXSTORAGE-L"
				}, 
				"leftBay2":{
					"type":"SYSTEM_EXSTORAGE-L"
				}, 
				"leftBay3":{
					"type":"SYSTEM_EXSTORAGE-L"
				}, 
				"rightBay1":{
					"type":"SYSTEM_EXSTORAGE-R"
				}, 
				"rightBay2":{
					"type":"SYSTEM_EXSTORAGE-R"
				}, 
				"rightBay3":{
					"type":"SYSTEM_EXSTORAGE-R"
				}, 
			}, 
			"reactor":{
				"power":16.0
			}, 
			"ammo":{
				"capacity":1000.0, 
				"initial":1000.0, 
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
				"equipment":"SYSTEM_CARGO_MPUFSO"
			}, 
			"autopilot":{
				"type":"SYSTEM_AUTOPILOT_MK2"
			}, 
			"propulsion":{
				"main":"SYSTEM_MAIN_ENGINE_BWMT535", 
				"rcs":"SYSTEM_THRUSTER_K37"
			}, 
			"hud":{
				"type":"SYSTEM_HUD_AT225"
			}, 
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
				"type": "SYSTEM_PDMWG-L"
			},
			"middleRight": {
				"type": "SYSTEM_PDMWG-R"
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
				"type": "SYSTEM_PDMWG-L"
			},
			"middleRight": {
				"type": "SYSTEM_PDMWG-R"
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
	},
	{
			"weaponSlot":{
				"middleRight":{
					"type":"SYSTEM_NONE"
				}, 
				"middleLeft":{
					"type":"SYSTEM_NONE"
				}, 
				"leftBay1":{
					"type":"SYSTEM_NONE"
				}, 
				"leftBay2":{
					"type":"SYSTEM_NONE"
				}, 
				"leftBay3":{
					"type":"SYSTEM_NONE"
				}, 
				"rightBay1":{
					"type":"SYSTEM_NONE"
				}, 
				"rightBay2":{
					"type":"SYSTEM_NONE"
				}, 
				"rightBay3":{
					"type":"SYSTEM_NONE"
				}, 
			}, 
			"reactor":{
				"power":4.0
			}, 
			"ammo":{
				"capacity":0.0, 
				"initial":0.0, 
			}, 
			"fuel":{
				"capacity":15000.0, 
				"initial":15000.0, 
			}, 
			"capacitor":{
				"capacity":500.0, 
			}, 
			"turbine":{
				"power":100.0, 
			}, 
			"shielding":{
				"emp":0, 
			}, 
			"cargo":{
				"equipment":"SYSTEM_NONE"
			}, 
			"autopilot":{
				"type":"SYSTEM_AUTOPILOT_NONE"
			}, 
			"propulsion":{
				"main":"SYSTEM_MAIN_ENGINE_PNTR", 
				"rcs":"SYSTEM_THRUSTER_NDSTR"
			}, 
			"hud":{
				"type":"SYSTEM_NONE"
			}, 
			"lidar":{
				"type":"SYSTEM_LIDAR_RADAR"
			}
		},
	{
		"ammo": {
			"capacity": 50000,
			"initial": 50000
		},
		"autopilot": {
			"type": "SYSTEM_AUTOPILOT_MK4"
		},
		"aux": {
			"power": "SYSTEM_AUX_SMES_MK3"
		},
		"capacitor": {
			"capacity": 1500
		},
		"cargo": {
			"equipment": "SYSTEM_CARGO_MPU_FAB"
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
			"type": "SYSTEM_HUD_PROSPECTOR_BALD"
		},
		"drone": {
			"scanner": "SYSTEM_RD_GUIDING"
		},
		"lidar": {
			"type": "SYSTEM_LIDAR_OPA"
		},
		"propulsion": {
			"main": "SYSTEM_MAIN_ENGINE_EIZAP",
			"rcs": "SYSTEM_THRUSTER_K69V"
		},
		"reactor": {
			"power": 50
		},
		"turbine": {
			"power": 500
		},
		"weaponSlot": {
			"leftBay1":{
				"type": "SYSTEM_DND_FIX"
			},
			"leftBay2": {
				"type": "SYSTEM_DND_FIX"
			},
			"leftBay3": {
				"type": "SYSTEM_DND_FIX"
			},
			"middleLeft": {
				"type": "SYSTEM_DND_FIX"
			},
			"middleRight": {
				"type": "SYSTEM_DND_FIX"
			},
			"rightBay1": {
				"type": "SYSTEM_DND_FIX"
			},
			"rightBay2": {
				"type": "SYSTEM_DND_FIX"
			},
			"rightBay3": {
				"type": "SYSTEM_DND_FIX"
			}
		}
	},
	{
		"ammo": {
			"capacity": 50000,
			"initial": 50000
		},
		"autopilot": {
			"type": "SYSTEM_AUTOPILOT_MK4"
		},
		"aux": {
			"power": "SYSTEM_AUX_MPD_MK3"
		},
		"capacitor": {
			"capacity": 1500
		},
		"cargo": {
			"equipment": "SYSTEM_CARGO_MPU_FAB"
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
			"type": "SYSTEM_HUD_PROSPECTOR_BALD"
		},
		"drone": {
			"scanner": "SYSTEM_RD_GUIDING"
		},
		"lidar": {
			"type": "SYSTEM_LIDAR_OPA"
		},
		"propulsion": {
			"main": "SYSTEM_MAIN_ENGINE_EIZAP",
			"rcs": "SYSTEM_THRUSTER_K69V"
		},
		"reactor": {
			"power": 50
		},
		"turbine": {
			"power": 500
		},
		"weaponSlot": {
			"leftBay1":{
				"type": "SYSTEM_DND_FIX"
			},
			"leftBay2": {
				"type": "SYSTEM_DND_FIX"
			},
			"leftBay3": {
				"type": "SYSTEM_DND_FIX"
			},
			"middleLeft": {
				"type": "SYSTEM_SYNCHRO-L"
			},
			"middleRight": {
				"type": "SYSTEM_SYNCHRO-R"
			},
			"rightBay1": {
				"type": "SYSTEM_DND_FIX"
			},
			"rightBay2": {
				"type": "SYSTEM_DND_FIX"
			},
			"rightBay3": {
				"type": "SYSTEM_DND_FIX"
			}
		}
	},
	{
			"weaponSlot":{
				"middleRight":{
					"type":"SYSTEM_EMD14"
				}, 
				"middleLeft":{
					"type":"SYSTEM_NONE"
				}, 
				"leftBay1":{
					"type":"SYSTEM_EXSTORAGE-L"
				}, 
				"leftBay2":{
					"type":"SYSTEM_EXSTORAGE-L"
				}, 
				"leftBay3":{
					"type":"SYSTEM_EXSTORAGE-L"
				}, 
				"rightBay1":{
					"type":"SYSTEM_EXSTORAGE-R"
				}, 
				"rightBay2":{
					"type":"SYSTEM_EXSTORAGE-R"
				}, 
				"rightBay3":{
					"type":"SYSTEM_EXSTORAGE-R"
				}, 
			}, 
			"reactor":{
				"power":16.0
			}, 
			"ammo":{
				"capacity":1000.0, 
				"initial":1000.0, 
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
				"equipment":"SYSTEM_CARGO_MPUFSO"
			}, 
			"autopilot":{
				"type":"SYSTEM_AUTOPILOT_MK2"
			}, 
			"propulsion":{
				"main":"SYSTEM_MAIN_ENGINE_BWMT535", 
				"rcs":"SYSTEM_THRUSTER_K37"
			}, 
			"hud":{
				"type":"SYSTEM_HUD_AT225"
			}, 
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
				"type": "SYSTEM_PDMWG-L"
			},
			"middleRight": {
				"type": "SYSTEM_PDMWG-R"
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
				"type": "SYSTEM_PDMWG-L"
			},
			"middleRight": {
				"type": "SYSTEM_PDMWG-R"
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
	},
	{
			"weaponSlot":{
				"middleRight":{
					"type":"SYSTEM_NONE"
				}, 
				"middleLeft":{
					"type":"SYSTEM_NONE"
				}, 
				"leftBay1":{
					"type":"SYSTEM_NONE"
				}, 
				"leftBay2":{
					"type":"SYSTEM_NONE"
				}, 
				"leftBay3":{
					"type":"SYSTEM_NONE"
				}, 
				"rightBay1":{
					"type":"SYSTEM_NONE"
				}, 
				"rightBay2":{
					"type":"SYSTEM_NONE"
				}, 
				"rightBay3":{
					"type":"SYSTEM_NONE"
				}, 
			}, 
			"reactor":{
				"power":4.0
			}, 
			"ammo":{
				"capacity":0.0, 
				"initial":0.0, 
			}, 
			"fuel":{
				"capacity":15000.0, 
				"initial":15000.0, 
			}, 
			"capacitor":{
				"capacity":500.0, 
			}, 
			"turbine":{
				"power":100.0, 
			}, 
			"shielding":{
				"emp":0, 
			}, 
			"cargo":{
				"equipment":"SYSTEM_NONE"
			}, 
			"autopilot":{
				"type":"SYSTEM_AUTOPILOT_NONE"
			}, 
			"propulsion":{
				"main":"SYSTEM_MAIN_ENGINE_PNTR", 
				"rcs":"SYSTEM_THRUSTER_NDSTR"
			}, 
			"hud":{
				"type":"SYSTEM_NONE"
			}, 
			"lidar":{
				"type":"SYSTEM_LIDAR_RADAR"
			}
		},
	{
			"weaponSlot":{
				"middleRight":{
					"type":"SYSTEM_EMD14"
				}, 
				"middleLeft":{
					"type":"SYSTEM_NONE"
				}, 
				"leftBay1":{
					"type":"SYSTEM_EXSTORAGE-L"
				}, 
				"leftBay2":{
					"type":"SYSTEM_EXSTORAGE-L"
				}, 
				"leftBay3":{
					"type":"SYSTEM_EXSTORAGE-L"
				}, 
				"rightBay1":{
					"type":"SYSTEM_EXSTORAGE-R"
				}, 
				"rightBay2":{
					"type":"SYSTEM_EXSTORAGE-R"
				}, 
				"rightBay3":{
					"type":"SYSTEM_EXSTORAGE-R"
				}, 
			}, 
			"reactor":{
				"power":16.0
			}, 
			"ammo":{
				"capacity":1000.0, 
				"initial":1000.0, 
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
				"equipment":"SYSTEM_CARGO_MPUFSO"
			}, 
			"autopilot":{
				"type":"SYSTEM_AUTOPILOT_MK2"
			}, 
			"propulsion":{
				"main":"SYSTEM_MAIN_ENGINE_BWMT535", 
				"rcs":"SYSTEM_THRUSTER_K37"
			}, 
			"hud":{
				"type":"SYSTEM_HUD_AT225"
			}, 
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
				"type": "SYSTEM_PDMWG-L"
			},
			"middleRight": {
				"type": "SYSTEM_PDMWG-R"
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
				"type": "SYSTEM_PDMWG-L"
			},
			"middleRight": {
				"type": "SYSTEM_PDMWG-R"
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
	},
	{
			"weaponSlot":{
				"middleRight":{
					"type":"SYSTEM_NONE"
				}, 
				"middleLeft":{
					"type":"SYSTEM_NONE"
				}, 
				"leftBay1":{
					"type":"SYSTEM_NONE"
				}, 
				"leftBay2":{
					"type":"SYSTEM_NONE"
				}, 
				"leftBay3":{
					"type":"SYSTEM_NONE"
				}, 
				"rightBay1":{
					"type":"SYSTEM_NONE"
				}, 
				"rightBay2":{
					"type":"SYSTEM_NONE"
				}, 
				"rightBay3":{
					"type":"SYSTEM_NONE"
				}, 
			}, 
			"reactor":{
				"power":4.0
			}, 
			"ammo":{
				"capacity":0.0, 
				"initial":0.0, 
			}, 
			"fuel":{
				"capacity":15000.0, 
				"initial":15000.0, 
			}, 
			"capacitor":{
				"capacity":500.0, 
			}, 
			"turbine":{
				"power":100.0, 
			}, 
			"shielding":{
				"emp":0, 
			}, 
			"cargo":{
				"equipment":"SYSTEM_NONE"
			}, 
			"autopilot":{
				"type":"SYSTEM_AUTOPILOT_NONE"
			}, 
			"propulsion":{
				"main":"SYSTEM_MAIN_ENGINE_PNTR", 
				"rcs":"SYSTEM_THRUSTER_NDSTR"
			}, 
			"hud":{
				"type":"SYSTEM_NONE"
			}, 
			"lidar":{
				"type":"SYSTEM_LIDAR_RADAR"
			}
		},
	{
			"weaponSlot":{
				"middleRight":{
					"type":"SYSTEM_EMD14"
				}, 
				"middleLeft":{
					"type":"SYSTEM_NONE"
				}, 
				"leftBay1":{
					"type":"SYSTEM_EXSTORAGE-L"
				}, 
				"leftBay2":{
					"type":"SYSTEM_EXSTORAGE-L"
				}, 
				"leftBay3":{
					"type":"SYSTEM_EXSTORAGE-L"
				}, 
				"rightBay1":{
					"type":"SYSTEM_EXSTORAGE-R"
				}, 
				"rightBay2":{
					"type":"SYSTEM_EXSTORAGE-R"
				}, 
				"rightBay3":{
					"type":"SYSTEM_EXSTORAGE-R"
				}, 
			}, 
			"reactor":{
				"power":16.0
			}, 
			"ammo":{
				"capacity":1000.0, 
				"initial":1000.0, 
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
				"equipment":"SYSTEM_CARGO_MPUFSO"
			}, 
			"autopilot":{
				"type":"SYSTEM_AUTOPILOT_MK2"
			}, 
			"propulsion":{
				"main":"SYSTEM_MAIN_ENGINE_BWMT535", 
				"rcs":"SYSTEM_THRUSTER_K37"
			}, 
			"hud":{
				"type":"SYSTEM_HUD_AT225"
			}, 
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
				"type": "SYSTEM_PDMWG-L"
			},
			"middleRight": {
				"type": "SYSTEM_PDMWG-R"
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
				"type": "SYSTEM_PDMWG-L"
			},
			"middleRight": {
				"type": "SYSTEM_PDMWG-R"
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
	},
	{
			"weaponSlot":{
				"middleRight":{
					"type":"SYSTEM_NONE"
				}, 
				"middleLeft":{
					"type":"SYSTEM_NONE"
				}, 
				"leftBay1":{
					"type":"SYSTEM_NONE"
				}, 
				"leftBay2":{
					"type":"SYSTEM_NONE"
				}, 
				"leftBay3":{
					"type":"SYSTEM_NONE"
				}, 
				"rightBay1":{
					"type":"SYSTEM_NONE"
				}, 
				"rightBay2":{
					"type":"SYSTEM_NONE"
				}, 
				"rightBay3":{
					"type":"SYSTEM_NONE"
				}, 
			}, 
			"reactor":{
				"power":4.0
			}, 
			"ammo":{
				"capacity":0.0, 
				"initial":0.0, 
			}, 
			"fuel":{
				"capacity":15000.0, 
				"initial":15000.0, 
			}, 
			"capacitor":{
				"capacity":500.0, 
			}, 
			"turbine":{
				"power":100.0, 
			}, 
			"shielding":{
				"emp":0, 
			}, 
			"cargo":{
				"equipment":"SYSTEM_NONE"
			}, 
			"autopilot":{
				"type":"SYSTEM_AUTOPILOT_NONE"
			}, 
			"propulsion":{
				"main":"SYSTEM_MAIN_ENGINE_PNTR", 
				"rcs":"SYSTEM_THRUSTER_NDSTR"
			}, 
			"hud":{
				"type":"SYSTEM_NONE"
			}, 
			"lidar":{
				"type":"SYSTEM_LIDAR_RADAR"
			}
		},
	{
			"weaponSlot":{
				"middleRight":{
					"type":"SYSTEM_EMD14"
				}, 
				"middleLeft":{
					"type":"SYSTEM_NONE"
				}, 
				"leftBay1":{
					"type":"SYSTEM_EXSTORAGE-L"
				}, 
				"leftBay2":{
					"type":"SYSTEM_EXSTORAGE-L"
				}, 
				"leftBay3":{
					"type":"SYSTEM_EXSTORAGE-L"
				}, 
				"rightBay1":{
					"type":"SYSTEM_EXSTORAGE-R"
				}, 
				"rightBay2":{
					"type":"SYSTEM_EXSTORAGE-R"
				}, 
				"rightBay3":{
					"type":"SYSTEM_EXSTORAGE-R"
				}, 
			}, 
			"reactor":{
				"power":16.0
			}, 
			"ammo":{
				"capacity":1000.0, 
				"initial":1000.0, 
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
				"equipment":"SYSTEM_CARGO_MPUFSO"
			}, 
			"autopilot":{
				"type":"SYSTEM_AUTOPILOT_MK2"
			}, 
			"propulsion":{
				"main":"SYSTEM_MAIN_ENGINE_BWMT535", 
				"rcs":"SYSTEM_THRUSTER_K37"
			}, 
			"hud":{
				"type":"SYSTEM_HUD_AT225"
			}, 
		},
	{
			"weaponSlot":{
				"middleRight":{
					"type":"SYSTEM_NONE"
				}, 
				"middleLeft":{
					"type":"SYSTEM_NONE"
				}, 
				"leftBay1":{
					"type":"SYSTEM_NONE"
				}, 
				"leftBay2":{
					"type":"SYSTEM_NONE"
				}, 
				"leftBay3":{
					"type":"SYSTEM_NONE"
				}, 
				"rightBay1":{
					"type":"SYSTEM_NONE"
				}, 
				"rightBay2":{
					"type":"SYSTEM_NONE"
				}, 
				"rightBay3":{
					"type":"SYSTEM_NONE"
				}, 
			}, 
			"reactor":{
				"power":4.0
			}, 
			"ammo":{
				"capacity":0.0, 
				"initial":0.0, 
			}, 
			"fuel":{
				"capacity":15000.0, 
				"initial":15000.0, 
			}, 
			"capacitor":{
				"capacity":500.0, 
			}, 
			"turbine":{
				"power":100.0, 
			}, 
			"shielding":{
				"emp":0, 
			}, 
			"cargo":{
				"equipment":"SYSTEM_NONE"
			}, 
			"autopilot":{
				"type":"SYSTEM_AUTOPILOT_NONE"
			}, 
			"propulsion":{
				"main":"SYSTEM_MAIN_ENGINE_PNTR", 
				"rcs":"SYSTEM_THRUSTER_NDSTR"
			}, 
			"hud":{
				"type":"SYSTEM_NONE"
			}, 
			"lidar":{
				"type":"SYSTEM_LIDAR_RADAR"
			}
		},
	{
			"weaponSlot":{
				"middleRight":{
					"type":"SYSTEM_EMD14"
				}, 
				"middleLeft":{
					"type":"SYSTEM_NONE"
				}, 
				"leftBay1":{
					"type":"SYSTEM_EXSTORAGE-L"
				}, 
				"leftBay2":{
					"type":"SYSTEM_EXSTORAGE-L"
				}, 
				"leftBay3":{
					"type":"SYSTEM_EXSTORAGE-L"
				}, 
				"rightBay1":{
					"type":"SYSTEM_EXSTORAGE-R"
				}, 
				"rightBay2":{
					"type":"SYSTEM_EXSTORAGE-R"
				}, 
				"rightBay3":{
					"type":"SYSTEM_EXSTORAGE-R"
				}, 
			}, 
			"reactor":{
				"power":16.0
			}, 
			"ammo":{
				"capacity":1000.0, 
				"initial":1000.0, 
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
				"equipment":"SYSTEM_CARGO_MPUFSO"
			}, 
			"autopilot":{
				"type":"SYSTEM_AUTOPILOT_MK2"
			}, 
			"propulsion":{
				"main":"SYSTEM_MAIN_ENGINE_BWMT535", 
				"rcs":"SYSTEM_THRUSTER_K37"
			}, 
			"hud":{
				"type":"SYSTEM_HUD_AT225"
			}, 
		},
	{
			"weaponSlot":{
				"middleRight":{
					"type":"SYSTEM_NONE"
				}, 
				"middleLeft":{
					"type":"SYSTEM_NONE"
				}, 
				"leftBay1":{
					"type":"SYSTEM_NONE"
				}, 
				"leftBay2":{
					"type":"SYSTEM_NONE"
				}, 
				"leftBay3":{
					"type":"SYSTEM_NONE"
				}, 
				"rightBay1":{
					"type":"SYSTEM_NONE"
				}, 
				"rightBay2":{
					"type":"SYSTEM_NONE"
				}, 
				"rightBay3":{
					"type":"SYSTEM_NONE"
				}, 
			}, 
			"reactor":{
				"power":4.0
			}, 
			"ammo":{
				"capacity":0.0, 
				"initial":0.0, 
			}, 
			"fuel":{
				"capacity":15000.0, 
				"initial":15000.0, 
			}, 
			"capacitor":{
				"capacity":500.0, 
			}, 
			"turbine":{
				"power":100.0, 
			}, 
			"shielding":{
				"emp":0, 
			}, 
			"cargo":{
				"equipment":"SYSTEM_NONE"
			}, 
			"autopilot":{
				"type":"SYSTEM_AUTOPILOT_NONE"
			}, 
			"propulsion":{
				"main":"SYSTEM_MAIN_ENGINE_PNTR", 
				"rcs":"SYSTEM_THRUSTER_NDSTR"
			}, 
			"hud":{
				"type":"SYSTEM_NONE"
			}, 
			"lidar":{
				"type":"SYSTEM_LIDAR_RADAR"
			}
		},
	{
			"weaponSlot":{
				"middleRight":{
					"type":"SYSTEM_EMD14"
				}, 
				"middleLeft":{
					"type":"SYSTEM_NONE"
				}, 
				"leftBay1":{
					"type":"SYSTEM_EXSTORAGE-L"
				}, 
				"leftBay2":{
					"type":"SYSTEM_EXSTORAGE-L"
				}, 
				"leftBay3":{
					"type":"SYSTEM_EXSTORAGE-L"
				}, 
				"rightBay1":{
					"type":"SYSTEM_EXSTORAGE-R"
				}, 
				"rightBay2":{
					"type":"SYSTEM_EXSTORAGE-R"
				}, 
				"rightBay3":{
					"type":"SYSTEM_EXSTORAGE-R"
				}, 
			}, 
			"reactor":{
				"power":16.0
			}, 
			"ammo":{
				"capacity":1000.0, 
				"initial":1000.0, 
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
				"equipment":"SYSTEM_CARGO_MPUFSO"
			}, 
			"autopilot":{
				"type":"SYSTEM_AUTOPILOT_MK2"
			}, 
			"propulsion":{
				"main":"SYSTEM_MAIN_ENGINE_BWMT535", 
				"rcs":"SYSTEM_THRUSTER_K37"
			}, 
			"hud":{
				"type":"SYSTEM_HUD_AT225"
			}, 
		},
	{
			"weaponSlot":{
				"middleRight":{
					"type":"SYSTEM_NONE"
				}, 
				"middleLeft":{
					"type":"SYSTEM_NONE"
				}, 
				"leftBay1":{
					"type":"SYSTEM_NONE"
				}, 
				"leftBay2":{
					"type":"SYSTEM_NONE"
				}, 
				"leftBay3":{
					"type":"SYSTEM_NONE"
				}, 
				"rightBay1":{
					"type":"SYSTEM_NONE"
				}, 
				"rightBay2":{
					"type":"SYSTEM_NONE"
				}, 
				"rightBay3":{
					"type":"SYSTEM_NONE"
				}, 
			}, 
			"reactor":{
				"power":4.0
			}, 
			"ammo":{
				"capacity":0.0, 
				"initial":0.0, 
			}, 
			"fuel":{
				"capacity":15000.0, 
				"initial":15000.0, 
			}, 
			"capacitor":{
				"capacity":500.0, 
			}, 
			"turbine":{
				"power":100.0, 
			}, 
			"shielding":{
				"emp":0, 
			}, 
			"cargo":{
				"equipment":"SYSTEM_NONE"
			}, 
			"autopilot":{
				"type":"SYSTEM_AUTOPILOT_NONE"
			}, 
			"propulsion":{
				"main":"SYSTEM_MAIN_ENGINE_PNTR", 
				"rcs":"SYSTEM_THRUSTER_NDSTR"
			}, 
			"hud":{
				"type":"SYSTEM_NONE"
			}, 
			"lidar":{
				"type":"SYSTEM_LIDAR_RADAR"
			}
		},
	{
			"weaponSlot":{
				"middleRight":{
					"type":"SYSTEM_EMD14"
				}, 
				"middleLeft":{
					"type":"SYSTEM_NONE"
				}, 
				"leftBay1":{
					"type":"SYSTEM_EXSTORAGE-L"
				}, 
				"leftBay2":{
					"type":"SYSTEM_EXSTORAGE-L"
				}, 
				"leftBay3":{
					"type":"SYSTEM_EXSTORAGE-L"
				}, 
				"rightBay1":{
					"type":"SYSTEM_EXSTORAGE-R"
				}, 
				"rightBay2":{
					"type":"SYSTEM_EXSTORAGE-R"
				}, 
				"rightBay3":{
					"type":"SYSTEM_EXSTORAGE-R"
				}, 
			}, 
			"reactor":{
				"power":16.0
			}, 
			"ammo":{
				"capacity":1000.0, 
				"initial":1000.0, 
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
				"equipment":"SYSTEM_CARGO_MPUFSO"
			}, 
			"autopilot":{
				"type":"SYSTEM_AUTOPILOT_MK2"
			}, 
			"propulsion":{
				"main":"SYSTEM_MAIN_ENGINE_BWMT535", 
				"rcs":"SYSTEM_THRUSTER_K37"
			}, 
			"hud":{
				"type":"SYSTEM_HUD_AT225"
			}, 
		},
]
