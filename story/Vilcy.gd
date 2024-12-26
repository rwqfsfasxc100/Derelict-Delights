extends "res://story/Vilcy.gd"

export var pirateEagle = 0
export var highPerformancePirate = 0

func makeAt(pos):
	var out = []

	for i in range(initialPirates):
		out.append(makePirate())
		
	for i in range(pirateAbductors):
		out.append(makeAbductor())
		
	for i in range(pirateg4a):
		out.append(makeg4a())
		
	for i in range(pirateRevenger):
		out.append(makeRevenger(makeg4a()))
	
	for i in range(vilcyPatroler):
		var cfg = Shipyard.getDefaultConfigByName("TRTL")
		cfg.config.weaponSlot = {
			"left":{"type":"SYSTEM_EMD14"}, 
			"right":{"type":"SYSTEM_EMD14"}
		}
		
		cfg.config.ammo = {
			"capacity":3000, 
			"initial":3000
		}
		cfg.config.turbine.power = 1000
		cfg.config.capacitor.capacity = 1000
		cfg.faction = "vilcy"
		var ship = Shipyard.createShipByConfig(cfg, randf() > reEncounterChance)
		
		ship.ai = true
		ship.preheat = true
		ship.customPaint = vilcyPaint
		ship.autopilotMaxVelocity = 1000
		ship.aiCuriosityDisance = 2000
		ship.aiCuriosityMaxVelocity = 200
		ship.aiHunterAccurancy = 0.99
		ship.aiMaxMargin = 2.5
		ship.rotation = randf() * 2 * PI
		ship.hostilityHitWhenEncelading = - 0.2
		out.append(ship)

	for i in range(vilcyDisabler):
		var cfg = Shipyard.getDefaultConfigByName("TRTL")
		cfg.config.weaponSlot = {
			"main":{"type":"SYSTEM_MWG"}, 
			"left":{"type":"SYSTEM_MWG"}, 
			"right":{"type":"SYSTEM_MWG"}
		}
		cfg.config.ammo = {
			"capacity":0, 
			"initial":0
		}
		cfg.config.turbine.power = 1000
		cfg.config.capacitor.capacity = 1000
		cfg.faction = "vilcy"
		
		var ship = Shipyard.createShipByConfig(cfg, randf() > reEncounterChance)
		
		ship.ai = true
		ship.preheat = true
		ship.customPaint = vilcyPaint
		ship.aiCuriosityDisance = 2000
		ship.aiHunterFireDistance = 4000
		ship.aiCuriosityMaxVelocity = 200
		ship.aiHunterAccurancy = 0.9
		ship.aiMaxMargin = 2.5
		ship.rotation = randf() * 2 * PI
		ship.hostilityHitWhenEncelading = - 0.2
		out.append(ship)


	for i in range(vilcyLone):
		var ship = makeLoneWolf()
		out.append(ship)

	for i in range(vilcyRevenger):
		var ship = makeRevenger(makeLoneWolf())
		out.append(ship)

	for i in range(vilcyBurner):
		var cfg = Shipyard.getDefaultConfigByName("TRTL")
		cfg.config.weaponSlot = {
			"left":{"type":"SYSTEM_CL150"}, 
			"right":{"type":"SYSTEM_CL150"}
		}
		cfg.config.ammo = {
			"capacity":0, 
			"initial":0
		}
		cfg.config.turbine.power = 1000
		cfg.config.capacitor.capacity = 1000
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
		out.append(ship)
		
	for i in range(pirateEagle):
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
		out.append(ship)
		
	for i in range(highPerformancePirate):
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
		out.append(ship)
		
		
	var timer = Tool.makeTimer(time, self)
	timer.connect("timeout", self, "pirateOnPath", [out])
	return out
