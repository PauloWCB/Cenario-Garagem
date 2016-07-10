#configuração do caso de 3 pares

extends CheckBox

var numPares

func _ready():
	pass
	



func _on_3p_pressed():
	Globals.set("numPares", 3)
	get_node("../4p").hide()
	get_node("../5p").hide()
	
