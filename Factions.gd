extends "res://Factions.gd"

func _ready():
	defaultDispositionOf.merge = {
		"construction":{"player":disposition.curious, "military":disposition.cautious, "pirate":disposition.hostile, "mineral":disposition.want, "asteroid":disposition.excavate, "helpless":disposition.support, "ai":disposition.curious}, 
	}
	factions.append_array = [
		"construction"
	]
