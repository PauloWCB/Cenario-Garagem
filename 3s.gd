#configuração do caso de 3 sujeiras

extends CheckBox

var numSujeiras

func _ready():
	pass
	

func _on_3s_pressed():
	Globals.set("numSujeiras", 3)
	get_node("../4s").hide()
	get_node("../5s").hide()
