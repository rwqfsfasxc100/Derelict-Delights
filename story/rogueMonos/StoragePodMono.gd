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

extends Node

export  var lifepod = preload("res://ships/drone/StoragePodRogue.tscn")
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
