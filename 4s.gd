#configuração do caso de 4 sujeiras

extends CheckBox

var numSujeiras

func _ready():
	pass
	

func _on_4s_pressed():
	Globals.set("numSujeiras", 4)
	get_node("../3s").hide()
	get_node("../5s").hide()