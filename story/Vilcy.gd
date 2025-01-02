extends "res://story/Vilcy.gd"

var pirateEagle = 0
var highPerformancePirate = 0

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

func makeAt(pos):
	var out = .makeAt(pos)
	# Spawn your new event
	for i in range(pirateEagle):
		var ship = makePirateEagle()
		out.append(ship)
	for i in range(highPerformancePirate):
		var ship = makeHighPerformanceEagle()
		out.append(ship)
	return out
