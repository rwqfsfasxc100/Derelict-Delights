extends Button

func _ready():
	get_parent().get_parent().get_parent().get_parent().get_parent().get_node("NoMargins").connect("pressed", self, "_on_Config_pressed")
	pass
