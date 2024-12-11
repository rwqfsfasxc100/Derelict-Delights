extends Node

export (float, 0, 1, 0.01) var randomChance = 1.0
export (float, 0, 1, 0.01) var minimumChance = 0.1
export (float, 100000.0, 2e+07, 100000.0) var moneyCeiling = 1e+07
export  var reEncouterChance = 0.8
export  var maxLinear = 500.0
export  var maxAngular = 0.5
export  var gauss = 2
export  var damageDerelict = true
export  var model = "TRTL"
export  var extraDamage = true

export  var wreck = true
export  var rescue = true
export  var derelictConversation = preload("res://comms/conversation/DerelictConversation.tscn")
export  var extraKinetic = 100000.0
export  var extraEmp = 100000.0
export  var extraRadius = 100

export (float, 0, 1, 0.05) var chaosLimit = 0.0

func canBeAt(pos):
	var rc = clamp(randomChance * (1 - CurrentGame.getMoney() / moneyCeiling), minimumChance, 1)
	if randf() > rc:
		Debug.l("* Denied because of random chance of %f" % rc)
		return false
	var chaos = get_parent().getChaosAt(pos)
	return chaos >= chaosLimit

func grandf():
	var v = pow(randf(), gauss)
	if randi() % 2 == 0:
		return v
	else :
		return - v
		
func applyExtraDamage(to):
	Debug.l("Applying extra damage to %s" % [to])
	var point = Vector2(randf() - 0.5, randf() - 0.5).normalized() * pow(randf(), gauss) * extraRadius
	to.applyKineticDamage(pow(randf(), gauss) * extraKinetic, point)
	to.applyEmpDamage(pow(randf(), gauss) * extraEmp, point, 1.0 / 60.0)

func makeAt(pos):
	var ships = []
	if wreck:
		var wreckage = Shipyard.createShipBuildByName(model, "helpless", randf() > reEncouterChance)
		wreckage.angular_velocity = (grandf()) * maxAngular
		wreckage.linear_velocity = Vector2(randf() - 0.5, randf() - 0.5).normalized() * pow(randf(), gauss) * maxLinear
		wreckage.setReactorState(false)
		wreckage.rotation = randf() * 2 * PI
		wreckage.ai = true
		wreckage.alwaysAI = true
		wreckage.factionIndependent = true
		wreckage.reactiveMass = 0
		wreckage.aiMinimumReactiveMass = 0
		wreckage.aiCuriosityDisance = 1500
		wreckage.initialize = false
		wreckage.abandoned = true
		wreckage.hailable = false
		wreckage.astrogating = false
		if damageDerelict:
			wreckage.damageLimit = 1
		var dci = derelictConversation.instance()
		wreckage.add_child(dci)
		wreckage.dialogTree = wreckage.get_path_to(dci)
		if extraDamage:
			wreckage.connect("setup", self, "applyExtraDamage", [wreckage])
		
		ships.append(wreckage)
	
	if rescue:
		var helper = Shipyard.createShipBuildByName("MADCERF", "helper", randf() > reEncouterChance)
		helper.ai = true
		helper.preheat = true
		helper.rotation = randf() * 2 * PI
		ships.append(helper)
	
	return ships
