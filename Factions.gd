extends "res://Factions.gd"


var newFactions = [
	"construction",
]

func _ready():
	factions.append_array(newFactions)
	defaultDispositionOf.merge = {
		"construction":{"player":disposition.curious, "military":disposition.cautious, "pirate":disposition.hostile, "mineral":disposition.want, "asteroid":disposition.excavate, "helpless":disposition.support, "ai":disposition.curious}, 
	}
	
