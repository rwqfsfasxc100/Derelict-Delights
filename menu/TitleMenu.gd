extends "res://menu/TitleMenu.gd"

func _on_Suggestions_pressed():
	OS.shell_open("https://forms.gle/yzvbGmaWeHWH9ChK8")

func _on_DDsettings_pressed():
	$NoMargins / DDSettingsPopup.popup_centered()

var lastFocus = null
func _on_DDSettingsPopup_about_to_show():
	lastFocus = get_focus_owner()
