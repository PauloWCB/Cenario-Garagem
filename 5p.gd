#configuração do caso de 5 pares

extends CheckBox

var numParafusos

func _ready():
	numParafusos = get_node("/root/Config").getParafusos()
	



func _on_5p_pressed():
	Globals.set("numPares", 5)
	get_node("/root/Config").getParafusos() = numParafusos
	get_node("../4p").hide()
	get_node("../3p").hide()
	
