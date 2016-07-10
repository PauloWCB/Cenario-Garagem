# configuração do caso de 4 combustiveis

extends CheckBox

var Comb


func _ready():
	pass


func _on_4c_pressed():
		Globals.set("Comb", 4)
		get_node("../3c").hide()
		get_node("../5c").hide()
		
