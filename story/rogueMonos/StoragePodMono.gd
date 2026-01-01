extends Node

export  var lifepod = preload("res://ships/Lifepod.tscn")
export  var processedCargo = false
export (float, 0, 1, 0.1) var processedCargoMax = 1.0
export (float, 0, 1, 0.1) var processedCargoMin = 0.0

export (float,0,1,0.05) var chaosLimit = 0.0

func _exit_tree():
	lifepod = null
	
var wasSpawnedThisTime = false

func canBeAt(pos):
	var chaos = get_parent().getChaosAt(pos)
	return chaos > chaosLimit

func makeAt(pos):
	var i = lifepod.instance()
	i.angular_velocity = (randf() - 0.5) * 0.1
	i.linear_velocity = Vector2(randf() - 0.5, randf() - 0.5).normalized()
	if processedCargo:
		i.processedCargoStorageType = "mono"
		i.processedCargoCapacity = 90000
		i.connect("tree_entered", self, "addProcessedCargo", [i])
	return i

func addProcessedCargo(i):
	yield(get_tree(),"idle_frame")
	var minerals = []
	for m in CurrentGame.mineralPrices:
		if m != "H2O":
			minerals.append(m)
	minerals.shuffle()
	var m = minerals[randi() % minerals.size()]
	var cap = i.getProcessedCargoCapacity(m)
	i.addProcessedCargo(m, 
		cap * randf() * 
			clamp(
				(processedCargoMax - processedCargoMin) + processedCargoMin, 0, 1), 
				cap)
