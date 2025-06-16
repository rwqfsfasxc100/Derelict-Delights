extends "res://story/Agenda.gd"

func _ready():
	agendaPool.append_array(superTHICCSpecificAgenda)
	
var superTHICCSpecificAgenda = [
	"AGENDA_HISTORIAN"
	]
