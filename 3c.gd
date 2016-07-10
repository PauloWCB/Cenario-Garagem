# configuração do caso de 3 combustiveis

extends CheckBox

var Comb

func _ready():
	pass
	

func _on_3c_pressed():
	Globals.set("Comb", 3)
	get_node("../4c").hide()
	get_node("../5c").hide()