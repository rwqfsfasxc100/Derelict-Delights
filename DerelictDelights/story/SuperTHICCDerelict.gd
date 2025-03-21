extends Node

export (float, 0, 1, 0.1) var randomChance = 1.0
export (float, 0, 1, 0.1) var minimumChance = 0.1
export  var bootedUp = false
export  var model = "COTHON"
export  var extraDamage = false
export  var eventOnly = true
export  var agenda = "AGENDA_HISTORIAN"
export  var shipNameAgenda = "{agenda/ship/0/shipname}"
export  var derelictConversation = preload("res://DerelictDelights/comms/conversation/SuperTHICCDerelictConversation.tscn")
export  var extraKinetic = 100000.0
export  var extraEmp = 100000.0
export  var extraRadius = 100
export  var gauss = 2
export  var empty = false
export  var damageDerelict = false
export  var imperative = 10
export  var imperativeStrength = 20

export (float, 0, 1, 0.05) var chaosLimit = 0.0

func canBeAt(pos):
	if eventOnly:
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
	var member = CurrentGame.getAgendaMember(agenda)
	if not member:
		return null

	var ships = []
	var wreckage = Shipyard.createShipBuildByName(model, "helpless", false)
	if bootedUp:
		wreckage.preheat = true
		wreckage.setReactorState(true)
	else :
		wreckage.setReactorState(false)
	var dict = Tool.getTranslationDictionary(null, null, member, "")
	wreckage.setShipName(shipNameAgenda.format(dict))
	wreckage.rotation = randf() * 2 * PI
	wreckage.ai = true
	wreckage.alwaysAI = true
	wreckage.factionIndependent = true
	if empty:
		wreckage.reactiveMass = 0
		wreckage.aiMinimumReactiveMass = 0
	else :
		wreckage.reactiveMass = wreckage.reactiveMassMax
	if imperative >= 0:
		wreckage.aiImperative = imperative
		wreckage.aiImperativeStrenght = imperativeStrength
		wreckage.aiImperativeTarget = CurrentGame.getPlayerShip()
	wreckage.aiCuriosityDisance = 2500
	wreckage.initialize = true
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

	return ships
