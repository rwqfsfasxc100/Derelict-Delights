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
	cfg.config.turbine.power = 500
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
					"type":"SYSTEM_PDT-L"
				}, 
				"leftBay2":{
					"type":"SYSTEM_PDT-L"
				}, 
				"leftBay3":{
					"type":"SYSTEM_PDT-L"
				}, 
				"rightBay1":{
					"type":"SYSTEM_PDT-R"
				}, 
				"rightBay2":{
					"type":"SYSTEM_PDT-R"
				}, 
				"rightBay3":{
					"type":"SYSTEM_PDT-R"
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
