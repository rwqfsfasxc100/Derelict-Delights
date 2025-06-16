extends "res://ships/WeaponSlot.gd"



func _on_WeaponSlot_tree_entered():
	var equipmentList = []
	var children = get_children()
	for child in children:
		var childname = child.name
		equipmentList.append(childname)
	
	pass
