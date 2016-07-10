# configuração do caso de 5 combustiveis

extends CheckBox

var Comb


func _ready():
	pass


func _on_5c_pressed():
		Globals.set("Comb", 5)
		get_node("../4c").hide()
		get_node("../3c").hide()
		
