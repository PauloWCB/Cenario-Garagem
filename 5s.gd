#configuração do caso de 5 sujeiras

extends CheckBox

var numSujeiras

func _ready():
	pass
	

func _on_5s_pressed():
	Globals.set("numSujeiras", 5)
	get_node("../4s").hide()
	get_node("../3s").hide()