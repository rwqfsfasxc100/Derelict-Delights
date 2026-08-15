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
# 4. The source code and the binary form, and any modifications made to them may not be used for the purpose of input data, the training of, or improvement of machine learning algorithms,
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

extends "res://story/Vilcy.gd"

export var pirateEagle = 0
export var highPerformancePirate = 0
export var vilcyBattleship = 0

func makePirateEagle():
	var cfg = Shipyard.getDefaultConfigByName("PROSPECTOR")
	cfg.config.weaponSlot = {
		"left":{"type":"SYSTEM_CL200AP"}, 
		"right":{"type":"SYSTEM_CL200AP"}
	}
	cfg.config.ammo = {
		"capacity":0, 
		"initial":0
	}
	cfg.config.drones = {
		"capacity":0,
		"initial":0
	}
	cfg.config.turbine.power = 1000
	cfg.config.capacitor.capacity = 1500
	cfg.faction = "pirate"
	var ship = Shipyard.createShipByConfig(cfg)
	ship.ai = true
	ship.preheat = true
	ship.customPaint = g4aPaint
	ship.aiCuriosityDisance = 2000
	ship.aiCuriosityMaxVelocity = 200
	ship.aiHunterAccurancy = 0.99
	ship.aiMaxMargin = 2.5
	ship.rotation = randf() * 2 * PI
	ship.hostilityHitWhenEncelading = - 0.2
	return ship
	
func makeHighPerformanceEagle():
	var cfg = Shipyard.getDefaultConfigByName("PROSPECTOR")
	cfg.config.weaponSlot = {
		"left":{"type":"SYSTEM_CL600P"}, 
		"right":{"type":"SYSTEM_CL600P"}, 
				"leftDrone":{
			"type":"SYSTEM_DND_FIX"
		}, 
		"rightDrone":{
			"type":"SYSTEM_DND_FIX"
		}
	}
	cfg.config.ammo = {
		"capacity":0, 
		"initial":0
	}
	cfg.config.drones = {
		"capacity":5000,
		"initial":5000
	}
	cfg.config.propulsion = {
		"main":"SYSTEM_MAIN_ENGINE_EIZAP",
		"rcs":"SYSTEM_THRUSTER_K69V"
	}
	cfg.config.turbine.power = 1500
	cfg.config.capacitor.capacity = 1500
	cfg.config.aux = {
		"power":"SYSTEM_AUX_SMES_MK3"
	}
	cfg.config.reactor.power = 50
	cfg.faction = "pirate"
	var ship = Shipyard.createShipByConfig(cfg)
	ship.ai = true
	ship.preheat = true
	ship.customPaint = g4aPaint
	ship.aiCuriosityDisance = 2000
	ship.aiCuriosityMaxVelocity = 200
	ship.aiHunterAccurancy = 0.99
	ship.aiMaxMargin = 2.5
	ship.rotation = randf() * 2 * PI
	ship.hostilityHitWhenEncelading = - 0.2
	return ship
	
func makeVilcyBattleship():
	var cfg = Shipyard.getDefaultConfigByName("AT225")
	cfg.config.weaponSlot = {
				"middleRight":{
					"type":"SYSTEM_ACL200P"
				}, 
				"middleLeft":{
					"type":"SYSTEM_ACL200P"
				}, 
				"leftBay1":{
					"type":"SYSTEM_PDMWG-L"
				}, 
				"leftBay2":{
					"type":"SYSTEM_PDMWG-L"
				}, 
				"leftBay3":{
					"type":"SYSTEM_PDMWG-L"
				}, 
				"rightBay1":{
					"type":"SYSTEM_PDMWG-R"
				}, 
				"rightBay2":{
					"type":"SYSTEM_PDMWG-R"
				}, 
				"rightBay3":{
					"type":"SYSTEM_PDMWG-R"
				}, 
			}
	cfg.config.ammo = {
		"capacity":50000, 
		"initial":50000
	}
	cfg.config.drones = {
		"capacity":0,
		"initial":0
	}
	cfg.config.propulsion = {
		"main":"SYSTEM_MAIN_ENGINE_NDNTR",
		"rcs":"SYSTEM_THRUSTER_NDSTR"
	}
	cfg.config.turbine.power = 1500
	cfg.config.capacitor.capacity = 4500
	cfg.config.aux = {
		"power":"SYSTEM_AUX_SMES_MK3"
	}
	cfg.config.fuel = {
		"capacity":500000,
		"initial":500000
	}
	cfg.config.reactor.power = 50
	cfg.faction = "vilcy"
	var ship = Shipyard.createShipByConfig(cfg)
	ship.ai = true
	ship.preheat = true
	ship.customPaint = vilcyPaint
	ship.aiCuriosityDisance = 2000
	ship.aiCuriosityMaxVelocity = 200
	ship.aiHunterAccurancy = 0.99
	ship.aiMaxMargin = 2.5
	ship.rotation = randf() * 2 * PI
	ship.hostilityHitWhenEncelading = - 0.2
	return ship

func makeAt(pos):
	var out = .makeAt(pos)
	# Spawn your new event
	for i in range(pirateEagle):
		var ship = makePirateEagle()
		out.append(ship)
	for i in range(highPerformancePirate):
		var ship = makeHighPerformanceEagle()
		out.append(ship)
	for i in range(vilcyBattleship):
		var ship = makeVilcyBattleship()
		out.append(ship)
	return out
