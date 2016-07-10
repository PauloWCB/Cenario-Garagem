
extends Area2D

var posCombustivelFixado = Vector2(400,150)
var CombustivelFixado = false

func _ready():
	set_fixed_process(true)
	set_process_input(true)


func _on_ColisaoCombustivel_body_enter( body ):
	if( body == get_node("Barra_Lateral/Combustivel3/") ):
		get_node("Barra_Lateral/Combustivel3/").set_pos(posCombustivelFixado)
		CombustivelFixado = true
		print ("Abastecido!")