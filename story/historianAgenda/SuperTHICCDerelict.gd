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
# 4. The source code and the binary form, and any modifications made to them may not be used for the purpose of input data, reference code snippets and/or files, OR used in the training of, or improvement of machine learning algorithms,
# including but not limited to artificial intelligence, natural language processing, or data mining. This condition applies to any derivatives,
# modifications, or updates based on the Software code. Any usage of the source code or the binary form may not be present in any form as data fed, inputted, or provided to an AI, or present in any AI-training dataset is considered a breach of this License.
# 
# 5. Any projects deriving work from this project MUST include a copy of this license and all other license and/or copyright agreements posed within other source material,
# all of which must be followed to its entirety. Failure to follow these licenses prohibit all modification and redistribution of the material until all licensing has been reinstated.
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

export (float, 0, 1, 0.1) var randomChance = 1.0
export (float, 0, 1, 0.1) var minimumChance = 0.1
export  var bootedUp = false
export  var model = "COTHON"
export  var extraDamage = false
export  var eventOnly = true
export  var agenda = "AGENDA_HISTORIAN"
export  var shipNameAgenda = "{agenda/ship/0/shipname}"
export  var derelictConversation = preload("res://AbandonedTechnologies/comms/conversation/SuperTHICCDerelictConversation.tscn")
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
	var cfg = Shipyard.getDefaultConfigByName(model)
	cfg.config.weaponSlot = {
		"left": {"type": "SYSTEM_CL600P"},
		"right": {"type": "SYSTEM_DND_HAUL"},
		"leftBack": {"type": "SYSTEM_EXSUPER-L"},
		"rightBack": {"type": "SYSTEM_EXSUPER-R"},
	}
	cfg.config.ammo = {
		"capacity": 0, 
		"initial": 0
	}
	cfg.config.drones = {
		"capacity": 20000, 
		"initial": 20000
	}
	cfg.config.propulsion = {
		"main": "SYSTEM_MAIN_ENGINE_K44",
		"rcs": "SYSTEM_THRUSTER_K44"
	}
	cfg.config.fuel = {
		"capacity": 80000,
		"initial": 0
	}
	cfg.config.turbine.power = 500
	cfg.config.capacitor.capacity = 1500
	cfg.faction = "helpless"
	var wreckage = Shipyard.createShipByConfig(cfg, false,24 * 3600 * 365 * 150)
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
