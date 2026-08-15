const DERELICT_225M = {
	"event_name":"Derelict225M",
	"event_type":"rescue_operation",
	"random_chance":0.1,
	"minimum_chance":0.01,
	"money_ceiling":2000000,
	"ship_model":"AT225-R",
	"rescue":false,
	"chaos":0.6,
	"config":[{"id":"AbandonedTechnologies","section":"DD_EVENT_TOGGLES","entry":"addDerelicts"},{"id":"AbandonedTechnologies","section":"DD_MAIN_TOGGLES","entry":"addEvents"}]
}
const DERELICT_BALD = {
	"event_name":"DerelictBALD",
	"event_type":"rescue_operation",
	"random_chance":0.15,
	"minimum_chance":0.01,
	"money_ceiling":2000000,
	"ship_model":"PROSPECTOR-BALD",
	"rescue":false,
	"chaos":0.6,
	"config":[{"id":"AbandonedTechnologies","section":"DD_EVENT_TOGGLES","entry":"addDerelicts"},{"id":"AbandonedTechnologies","section":"DD_MAIN_TOGGLES","entry":"addEvents"}]
}
const CONSTRUCTION_MINER_MINING = {
	"event_name":"ConstructionMinerMining",
	"event_type":"miner_mining",
	"ship_model":"OCP209",
	"chaos":0.2,
	"config":[{"id":"AbandonedTechnologies","section":"DD_EVENT_TOGGLES","entry":"addNewNPCMiners"},{"id":"AbandonedTechnologies","section":"DD_MAIN_TOGGLES","entry":"addEvents"}]
}
const SHUTTLE_MINER_MINING = {
	"event_name":"ShuttleMinerMining",
	"event_type":"miner_mining",
	"ship_model":"KITSUNE",
	"chaos":0.05,
	"config":[{"id":"AbandonedTechnologies","section":"DD_EVENT_TOGGLES","entry":"addNewNPCMiners"},{"id":"AbandonedTechnologies","section":"DD_MAIN_TOGGLES","entry":"addEvents"}]
}
const LARGE_MINER_MINING = {
	"event_name":"LargeMinerMining",
	"event_type":"miner_mining",
	"ship_model":"AT225",
	"chaos":0.3,
	"config":[{"id":"AbandonedTechnologies","section":"DD_EVENT_TOGGLES","entry":"addNewNPCMiners"},{"id":"AbandonedTechnologies","section":"DD_MAIN_TOGGLES","entry":"addEvents"}]
}
const LARGE_MINER_MINING2 = {
	"event_name":"LargeMinerMining2",
	"event_type":"miner_mining",
	"ship_model":"AT225-B",
	"chaos":0.3,
	"config":[{"id":"AbandonedTechnologies","section":"DD_EVENT_TOGGLES","entry":"addNewNPCMiners"},{"id":"AbandonedTechnologies","section":"DD_MAIN_TOGGLES","entry":"addEvents"}]
}
const PROSPECTOR_MINER_MINING = {
	"event_name":"ProspectorMinerMining",
	"event_type":"miner_mining",
	"ship_model":"PROSPECTOR-VP",
	"chaos":0.25,
	"config":[{"id":"AbandonedTechnologies","section":"DD_EVENT_TOGGLES","entry":"addNewNPCMiners"},{"id":"AbandonedTechnologies","section":"DD_MAIN_TOGGLES","entry":"addEvents"}]
}
const PROSPECTOR_MINER_MINING2 = {
	"event_name":"ProspectorMinerMining2",
	"event_type":"miner_mining",
	"ship_model":"PROSPECTOR-FAT",
	"chaos":0.25,
	"config":[{"id":"AbandonedTechnologies","section":"DD_EVENT_TOGGLES","entry":"addNewNPCMiners"},{"id":"AbandonedTechnologies","section":"DD_MAIN_TOGGLES","entry":"addEvents"}]
}
const PROSPECTOR_MINER_MINING3 = {
	"event_name":"ProspectorMinerMining3",
	"event_type":"miner_mining",
	"ship_model":"PROSPECTOR-LUX",
	"chaos":0.25,
	"config":[{"id":"AbandonedTechnologies","section":"DD_EVENT_TOGGLES","entry":"addNewNPCMiners"},{"id":"AbandonedTechnologies","section":"DD_MAIN_TOGGLES","entry":"addEvents"}]
}
const MINER_MINING2 = {
	"event_name":"MinerMining2",
	"event_type":"miner_mining",
	"ship_model":"TRTL-LCB",
	"config":[{"id":"AbandonedTechnologies","section":"DD_EVENT_TOGGLES","entry":"addNewNPCMiners"},{"id":"AbandonedTechnologies","section":"DD_MAIN_TOGGLES","entry":"addEvents"}]
}
const MINER_MINING3 = {
	"event_name":"MinerMining3",
	"event_type":"miner_mining",
	"ship_model":"TRTL-R",
	"config":[{"id":"AbandonedTechnologies","section":"DD_EVENT_TOGGLES","entry":"addNewNPCMiners"},{"id":"AbandonedTechnologies","section":"DD_MAIN_TOGGLES","entry":"addEvents"}]
}
const MINER_MINING4 = {
	"event_name":"MinerMining4",
	"event_type":"miner_mining",
	"ship_model":"TRTL-T",
	"config":[{"id":"AbandonedTechnologies","section":"DD_EVENT_TOGGLES","entry":"addNewNPCMiners"},{"id":"AbandonedTechnologies","section":"DD_MAIN_TOGGLES","entry":"addEvents"}]
}
const ANCIENT_MINER_MINING2 = {
	"event_name":"AncientMinerMining2",
	"event_type":"miner_mining",
	"ship_model":"COTHON-CHK",
	"config":[{"id":"AbandonedTechnologies","section":"DD_EVENT_TOGGLES","entry":"addNewNPCMiners"},{"id":"AbandonedTechnologies","section":"DD_MAIN_TOGGLES","entry":"addEvents"}]
}
const ANCIENT_MINER_MINING3 = {
	"event_name":"AncientMinerMining3",
	"event_type":"miner_mining",
	"ship_model":"COTHON-LND",
	"config":[{"id":"AbandonedTechnologies","section":"DD_EVENT_TOGGLES","entry":"addNewNPCMiners"},{"id":"AbandonedTechnologies","section":"DD_MAIN_TOGGLES","entry":"addEvents"}]
}
const ANCIENT_MINER_MINING4 = {
	"event_name":"AncientMinerMining4",
	"event_type":"miner_mining",
	"ship_model":"COTHON-V",
	"config":[{"id":"AbandonedTechnologies","section":"DD_EVENT_TOGGLES","entry":"addNewNPCMiners"},{"id":"AbandonedTechnologies","section":"DD_MAIN_TOGGLES","entry":"addEvents"}]
}
const HAB_UNDER_CONSTRUCTION = {
	"event_name":"HabitatUnderConstruction",
	"event_type":"instance_with_chance",
	"rock_scene":"res://AbandonedTechnologies/story/habitat/HabitatBeingBuilt.tscn",
	"max_density":PoolIntArray([2, 4, 32, 128, 256]),
	"poi_name":"POI_HABITAT_BUILDING",
	"transponder":"SRA-08",
	"custom_name":"POI_HABITAT_BUILDING",
	"away_radius":1000000,
	"lock_out_if_poi":"POI_HABITAT_BUILDING",
	"config":[{"id":"AbandonedTechnologies","section":"DD_EVENT_TOGGLES","entry":"addHabitatUnderConstruction"},{"id":"AbandonedTechnologies","section":"DD_MAIN_TOGGLES","entry":"addEvents"}]
}
const STORAGE_POD_BIG = {
	"event_name":"StoragePodBig",
	"event_type":"lifepod_is_floating",
	"lifepod":"res://AbandonedTechnologies/ships/drone/StoragePodBigRogue.tscn",
	"processed_cargo":true,
	"config":[{"id":"AbandonedTechnologies","section":"DD_EVENT_TOGGLES","entry":"addNewRogueContainers"},{"id":"AbandonedTechnologies","section":"DD_MAIN_TOGGLES","entry":"addEvents"}]
}
const STORAGE_POD_SUPER_BIG = {
	"event_name":"StoragePodSuperBig",
	"event_type":"lifepod_is_floating",
	"lifepod":"res://AbandonedTechnologies/ships/drone/StoragePodSuperBigRogue.tscn",
	"processed_cargo":true,
	"config":[{"id":"AbandonedTechnologies","section":"DD_EVENT_TOGGLES","entry":"addNewRogueContainers"},{"id":"AbandonedTechnologies","section":"DD_MAIN_TOGGLES","entry":"addEvents"}]
}
const STORAGE_POD_EMPTY = {
	"event_name":"EmptyStoragePod",
	"event_type":"lifepod_is_floating",
	"lifepod":"res://AbandonedTechnologies/ships/drone/StoragePodEmpty.tscn",
	"config":[{"id":"AbandonedTechnologies","section":"DD_EVENT_TOGGLES","entry":"addNewRogueContainers"},{"id":"AbandonedTechnologies","section":"DD_MAIN_TOGGLES","entry":"addEvents"}]
}
const STORAGE_POD_MONO_EMPTY = {
	"event_name":"EmptyStoragePodMono",
	"event_type":"lifepod_is_floating",
	"lifepod":"res://AbandonedTechnologies/ships/drone/StoragePodEmptyMono.tscn",
	"config":[{"id":"AbandonedTechnologies","section":"DD_EVENT_TOGGLES","entry":"addNewRogueContainers"},{"id":"AbandonedTechnologies","section":"DD_MAIN_TOGGLES","entry":"addEvents"}]
}
const KESSLER_SYNDROME = {
	"event_name":"KesslerSyndrome",
	"event_type":"script",
	"script_path":"res://AbandonedTechnologies/story/kesslersyndrome/KesslerSyndrome.gd",
	"config":[{"id":"AbandonedTechnologies","section":"DD_EVENT_TOGGLES","entry":"kesslerSyndrome"},{"id":"AbandonedTechnologies","section":"DD_MAIN_TOGGLES","entry":"addEvents"}]
}
const STORAGE_POD_MONO = {
	"event_name":"StoragePodMono",
	"event_type":"script",
	"script_path":"res://AbandonedTechnologies/story/rogueMonos/StoragePodMono.gd",
	"custom_property_modifications":{
		"processedCargo":true,
		"chaosLimit":0.3
	},
	"config":[{"id":"AbandonedTechnologies","section":"DD_EVENT_TOGGLES","entry":"rogueMonos"},{"id":"AbandonedTechnologies","section":"DD_MAIN_TOGGLES","entry":"addEvents"}]
}
const PIRATE_EAGLE = {
	"event_name":"PirateEagle",
	"event_type":"vilcy",
	"lock_out_story":"",
	"lock_out_limit":0,
	"chaos":0.2,
	"custom_property_modifications":{
		"pirateEagle":2
	},
	"config":[{"id":"AbandonedTechnologies","section":"DD_EVENT_TOGGLES","entry":"addNewVilcyAndG4AEncounters"},{"id":"AbandonedTechnologies","section":"DD_MAIN_TOGGLES","entry":"addEvents"}]
}
const HIGH_PERFORMANCE_PIRATE = {
	"event_name":"HighPerformancePirate",
	"event_type":"vilcy",
	"minimum_money":250000,
	"lock_out_story":"",
	"lock_out_limit":0,
	"require_story":"g4a.destroyed",
	"require_limit":1,
	"chaos":0.4,
	"custom_property_modifications":{
		"highPerformancePirate":1
	},
	"config":[{"id":"AbandonedTechnologies","section":"DD_EVENT_TOGGLES","entry":"addNewVilcyAndG4AEncounters"},{"id":"AbandonedTechnologies","section":"DD_MAIN_TOGGLES","entry":"addEvents"}]
}
const HIGH_ENDURANCE_BATTLE_NO_G4A = {
	"event_name":"HighEnduranceBattleNoG4A",
	"event_type":"vilcy",
	"minimum_depth_in_km":100,
	"maximum_depth_in_km":2900,
	"minimum_money":250000,
	"lock_out_story":"",
	"lock_out_limit":0,
	"require_story":"g4a.destroyed",
	"require_limit":1,
	"chaos":0.5,
	"custom_property_modifications":{
		"highPerformancePirate":2,
		"vilcyBattleship":1
	},
	"config":[{"id":"AbandonedTechnologies","section":"DD_EVENT_TOGGLES","entry":"addNewVilcyAndG4AEncounters"},{"id":"AbandonedTechnologies","section":"DD_MAIN_TOGGLES","entry":"addEvents"}]
}
const VILCY_BATTLESHIP = {
	"event_name":"VilcyBattleship",
	"event_type":"vilcy",
	"minimum_money":250000,
	"lock_out_story":"",
	"lock_out_limit":0,
	"require_story":"vilcy.bbw.destroyed",
	"require_limit":1,
	"chaos":0.4,
	"custom_property_modifications":{
		"vilcyBattleship":1
	},
	"config":[{"id":"AbandonedTechnologies","section":"DD_EVENT_TOGGLES","entry":"addNewVilcyAndG4AEncounters"},{"id":"AbandonedTechnologies","section":"DD_MAIN_TOGGLES","entry":"addEvents"}]
}
const HIGH_ENDURANCE_BATTLE_NO_BBW = {
	"event_name":"HighEnduranceBattleNoBBW",
	"event_type":"vilcy",
	"minimum_depth_in_km":100,
	"maximum_depth_in_km":2900,
	"minimum_money":250000,
	"lock_out_story":"",
	"lock_out_limit":0,
	"require_story":"vilcy.bbw.destroyed",
	"require_limit":1,
	"chaos":0.5,
	"custom_property_modifications":{
		"highPerformancePirate":1,
		"vilcyBattleship":2
	},
	"config":[{"id":"AbandonedTechnologies","section":"DD_EVENT_TOGGLES","entry":"addNewVilcyAndG4AEncounters"},{"id":"AbandonedTechnologies","section":"DD_MAIN_TOGGLES","entry":"addEvents"}]
}
