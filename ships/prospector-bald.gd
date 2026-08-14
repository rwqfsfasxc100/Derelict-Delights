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
	usedShipConfigs["PROSPECTOR-BALD"] = PROSPECTOR_BALD

var PROSPECTOR_BALD = [
	{
			"fuel":{
				"capacity":30000.0, 
				"initial":30000.0, 
			}, 
			"propulsion":{
				"main":"SYSTEM_MAIN_ENGINE_NPMP", 
				"rcs":"SYSTEM_THRUSTER_GHET"
			}, 
			"reactor":{
				"power":50.0
			}, 
			"weaponSlot":{
				"droneLeft":{
					"type":"SYSTEM_NONE"
				}, 
				"droneRight":{
					"type":"SYSTEM_NONE"
				}, 
			}, 
			"ammo":{
				"capacity":0.0, 
				"initial":0.0
			}, 
			"drones":{
				"capacity":0.0, 
				"initial":0.0
			}, 
			"autopilot":{
				"type":"SYSTEM_AUTOPILOT_RTYPE"
			}, 
			"capacitor":{
				"capacity":1000.0
			}, 
			"turbine":{
				"power":500.0
			}
		},
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
