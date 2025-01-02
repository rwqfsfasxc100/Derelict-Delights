extends "res://ships/Shipyard.gd"

func _ready():
	usedShipConfigs["TRTL"].append_array(TRTL)

var TRTL = [
	{
		"weaponSlot":{
			"main":{
				"type":"SYSTEM_EMD14"
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
				"main":{
					"type":"SYSTEM_SALVAGE_ARM"
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
				"main":{
					"type":"SYSTEM_PDMWG"
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
		},
		{
			"autopilot":{
				"type":"SYSTEM_AUTOPILOT_MK2"
			}, 
			"capacitor":{
				"capacity":1500.0
			}, 
			"drones":{
				"initial":0.0, 
				"capacity":0.0
			}, 
			"fuel":{
				"capacity":80000.0, 
				"initial":80000.0
			}, 
			"propulsion":{
				"main":"SYSTEM_MAIN_ENGINE_K37", 
				"rcs":"SYSTEM_THRUSTER_K37"
			}, 
			"ammo":{
				"capacity":0.0, 
				"initial":0.0
			}, 
			"hud":{
				"type":"SYSTEM_HUD_AT225"
			}, 
			"reactor":{
				"power":8.0
			}, 
			"drone":{
				"scanner":"SYSTEM_RD_SPECTROMETER"
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
					"type":"SYSTEM_HUNK-L"
				}, 
				"main":{
					"type":"SYSTEM_SALVAGE_ARM"
				}, 
				"right":{
					"type":"SYSTEM_CL150-R"
				},
				"leftBack":{
					"type":"SYSTEM_NONE"
				}, 
				"rightback":{
					"type":"SYSTEM_NONE"
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
				"capacity":200000.0, 
				"initial":200000.0
			}, 
			"propulsion":{
				"main":"SYSTEM_MAIN_ENGINE_EIZAP", 
				"rcs":"SYSTEM_THRUSTER_K37"
			}, 
			"ammo":{
				"capacity":1000.0, 
				"initial":1000.0
			}, 
			"hud":{
				"type":"SYSTEM_HUD_TNTRL"
			}, 
			"reactor":{
				"power":16.0
			}, 
			"drone":{
				"scanner":"SYSTEM_RD_STANDARD"
			},
			"aux":{
				"power":"SYSTEM_NONE"
			},
			"cargo":{
				"equipment":"SYSTEM_CARGO_MPU"
			}, 
			"lidar":{
				"type": "SYSTEM_LIDAR_DOPPLER"
			},
			"turbine":{
				"power":500.0
			}, 
			"weaponSlot":{
				"left":{
					"type":"SYSTEM_ACL200P"
				}, 
				"main":{
					"type":"SYSTEM_SALVAGE_ARM"
				}, 
				"right":{
					"type":"SYSTEM_SCOOP-R"
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
				"type":"SYSTEM_AUTOPILOT_MK4"
			}, 
			"capacitor":{
				"capacity":1500.0
			}, 
			"drones":{
				"initial":10000.0, 
				"capacity":10000.0
			}, 
			"fuel":{
				"capacity":200000.0, 
				"initial":200000.0
			}, 
			"propulsion":{
				"main":"SYSTEM_MAIN_ENGINE_EIZAP", 
				"rcs":"SYSTEM_THRUSTER_AGILE"
			}, 
			"ammo":{
				"capacity":1000.0, 
				"initial":1000.0
			}, 
			"hud":{
				"type":"SYSTEM_HUD_PROSPECTOR_BALD"
			}, 
			"reactor":{
				"power":50.0
			}, 
			"drone":{
				"scanner":"SYSTEM_RD_GUIDING"
			},
			"aux":{
				"power":"SYSTEM_AUX_SMES_MK3"
			},
			"cargo":{
				"equipment":"SYSTEM_CARGO_MPU_FAB"
			}, 
			"lidar":{
				"type": "SYSTEM_LIDAR_OPA"
			},
			"turbine":{
				"power":500.0
			}, 
			"weaponSlot":{
				"left":{
					"type":"SYSTEM_DND_FIX"
				}, 
				"main":{
					"type":"SYSTEM_DND_FIX"
				}, 
				"right":{
					"type":"SYSTEM_DND_FIX"
				},
				"leftBack":{
					"type":"SYSTEM_DND_FIX"
				}, 
				"rightback":{
					"type":"SYSTEM_DND_FIX"
				}
			}
		},
		{
			"autopilot":{
				"type":"SYSTEM_AUTOPILOT_MK1"
			}, 
			"capacitor":{
				"capacity":1500.0
			}, 
			"drones":{
				"initial":10000.0, 
				"capacity":10000.0
			}, 
			"fuel":{
				"capacity":200000.0, 
				"initial":200000.0
			}, 
			"propulsion":{
				"main":"SYSTEM_MAIN_ENGINE_EIZAP", 
				"rcs":"SYSTEM_THRUSTER_K69V"
			}, 
			"ammo":{
				"capacity":10000.0, 
				"initial":10000.0
			}, 
			"hud":{
				"type":"SYSTEM_HUD_TNTRL"
			}, 
			"reactor":{
				"power":20.0
			}, 
			"drone":{
				"scanner":"SYSTEM_RD_STANDARD"
			},
			"aux":{
				"power":"SYSTEM_AUX_MPD_MK3"
			},
			"cargo":{
				"equipment":"SYSTEM_CARGO_MPU_FAB"
			}, 
			"lidar":{
				"type": "SYSTEM_LIDAR_DOPPLER"
			},
			"turbine":{
				"power":500.0
			}, 
			"weaponSlot":{
				"left":{
					"type":"SYSTEM_SYNCHRO-L"
				}, 
				"main":{
					"type":"SYSTEM_NANI"
				}, 
				"right":{
					"type":"SYSTEM_SYNCHRO-R"
				},
				"leftBack":{
					"type":"SYSTEM_HUNK"
				}, 
				"rightback":{
					"type":"SYSTEM_HUNK"
				}
			}
		},
		{
			"autopilot":{
				"type":"SYSTEM_AUTOPILOT_MK2"
			}, 
			"capacitor":{
				"capacity":1500.0
			}, 
			"drones":{
				"initial":10000.0, 
				"capacity":10000.0
			}, 
			"fuel":{
				"capacity":50000.0, 
				"initial":50000.0
			}, 
			"propulsion":{
				"main":"SYSTEM_MAIN_ENGINE_EIZAP", 
				"rcs":"SYSTEM_THRUSTER_MA350HO"
			}, 
			"ammo":{
				"capacity":0.0, 
				"initial":0.0
			}, 
			"hud":{
				"type":"SYSTEM_HUD_TNTRL"
			}, 
			"reactor":{
				"power":30.0
			}, 
			"drone":{
				"scanner":"SYSTEM_RD_GUIDING"
			},
			"aux":{
				"power":"SYSTEM_AUX_MPD_MK2"
			},
			"cargo":{
				"equipment":"SYSTEM_CARGO_MPUSML"
			}, 
			"lidar":{
				"type": "SYSTEM_LIDAR_RADAR"
			},
			"turbine":{
				"power":500.0
			}, 
			"weaponSlot":{
				"left":{
					"type":"SYSTEM_DND_HAUL"
				}, 
				"main":{
					"type":"SYSTEM_CL600P"
				}, 
				"right":{
					"type":"SYSTEM_DND_HAUL"
				},
				"leftBack":{
					"type":"SYSTEM_NONE"
				}, 
				"rightback":{
					"type":"SYSTEM_NONE"
				}
			}
		},
		{
			"autopilot":{
				"type":"SYSTEM_AUTOPILOT_MK2"
			}, 
			"capacitor":{
				"capacity":1000.0
			}, 
			"drones":{
				"initial":0.0, 
				"capacity":0.0
			}, 
			"fuel":{
				"capacity":50000.0, 
				"initial":50000.0
			}, 
			"propulsion":{
				"main":"SYSTEM_MAIN_ENGINE_NMPD", 
				"rcs":"SYSTEM_THRUSTER_MA350HO"
			}, 
			"ammo":{
				"capacity":10000.0, 
				"initial":10000.0
			}, 
			"hud":{
				"type":"SYSTEM_HUD_TNTRL"
			}, 
			"reactor":{
				"power":12.0
			}, 
			"drone":{
				"scanner":"SYSTEM_RD_STANDARD"
			},
			"aux":{
				"power":"SYSTEM_NONE"
			},
			"cargo":{
				"equipment":"SYSTEM_CARGO_BAFFLES"
			}, 
			"lidar":{
				"type": "SYSTEM_LIDAR_DOPPLER_CONE"
			},
			"turbine":{
				"power":200.0
			}, 
			"weaponSlot":{
				"left":{
					"type":"SYSTEM_RAILTOR"
				}, 
				"main":{
					"type":"SYSTEM_RAILTOR"
				}, 
				"right":{
					"type":"SYSTEM_RAILTOR"
				},
				"leftBack":{
					"type":"SYSTEM_NONE"
				}, 
				"rightback":{
					"type":"SYSTEM_NONE"
				}
			}
		},
		{
			"autopilot":{
				"type":"SYSTEM_AUTOPILOT_MK2"
			}, 
			"capacitor":{
				"capacity":1000.0
			}, 
			"drones":{
				"initial":0.0, 
				"capacity":0.0
			}, 
			"fuel":{
				"capacity":50000.0, 
				"initial":50000.0
			}, 
			"propulsion":{
				"main":"SYSTEM_MAIN_ENGINE_K37", 
				"rcs":"SYSTEM_THRUSTER_MA350HO"
			}, 
			"ammo":{
				"capacity":10000.0, 
				"initial":10000.0
			}, 
			"hud":{
				"type":"SYSTEM_HUD_TNTRL"
			}, 
			"reactor":{
				"power":16.0
			}, 
			"drone":{
				"scanner":"SYSTEM_RD_STANDARD"
			},
			"aux":{
				"power":"SYSTEM_NONE"
			},
			"cargo":{
				"equipment":"SYSTEM_CARGO_MPU"
			}, 
			"lidar":{
				"type": "SYSTEM_LIDAR_DOPPLER_CONE"
			},
			"turbine":{
				"power":200.0
			}, 
			"weaponSlot":{
				"left":{
					"type":"SYSTEM_SALVAGE_ARM"
				}, 
				"main":{
					"type":"SYSTEM_ACL200"
				}, 
				"right":{
					"type":"SYSTEM_EXSTORAGE-R"
				},
				"leftBack":{
					"type":"SYSTEM_NONE"
				}, 
				"rightback":{
					"type":"SYSTEM_NONE"
				}
			}
		}
	]
