# [license]
# 3-Clause BSD NON-AI License
# 
# Copyright 2026 __hev (Benjamin Buckhurst)
# 
# Redistribution and use in source and binary forms, with or without modification,
# are permitted provided that the following conditions are met:
# 
# 1. Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.
# 
# 2. Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer
# in the documentation and/or other materials provided with the distribution.
# 
# 3. Neither the name of the copyright holder nor the names of its contributors may be used to endorse or promote products
# derived from this software without specific prior written permission.
# 
# 4. The source code and the binary form, and any modifications made to them may not be used for the purpose of input data, the training of, or improvment of machine learning algorithms,
# including but not limited to artificial intelligence, natural language processing, or data mining. This condition applies to any derivatives,
# modifications, or updates based on the Software code. Any usage of the source code or the binary form in an AI-training dataset is considered a breach of this License.
# 
# THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS “AS IS” AND ANY EXPRESS OR IMPLIED WARRANTIES,
# INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED.
# IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY,
# OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS;
# OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
# OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE,
# EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
# [/license]

extends "res://ships/Shipyard.gd"

func _ready():
	usedShipConfigs["EIME"] = EIME

var EIME = [
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
					"type":"SYSTEM_NONE"
				}, 
				"left":{
					"type":"SYSTEM_NONE"
				}, 
				"right":{
					"type":"SYSTEM_NONE"
				}, 
			}, 
			"ammo":{
				"capacity":0.0, 
				"initial":0.0
			}, 
			"autopilot":{
				"type":"SYSTEM_AUTOPILOT_MK4"
			}, 
			"capacitor":{
				"capacity":1000.0
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
			"weaponSlot":{
				"left":{
					"type":"SYSTEM_SYNCHRO-L"
				}, 
				"main":{
					"type":"SYSTEM_NANI"
				}, 
				"right":{
					"type":"SYSTEM_SYNCHRO-R"
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
			}
		}
]	
