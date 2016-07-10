#configuração do caso de 4 pares

extends CheckBox

var numParafusos

func _ready():
	numParafusos = get_node("/root/Config").getParafusos()
	



func _on_4p_pressed():
	Globals.set("numPares", 4)
	get_node("../3p").hide()
	get_node("../5p").hide()
	
