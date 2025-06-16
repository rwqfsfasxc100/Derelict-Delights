extends "res://ships/modules/DockingArm.gd"



func _on_ScoopDock_tree_entered():
	var shipName = get_parent().get_parent().name
	var pos = self.position
	if shipName == "EIME":
#		self.position = Vector2(20, 64)
		pass
