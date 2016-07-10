
extends Control

var qtd_Erros
var qtd_Ferramentas
var qtd_Parafusos
var qtd_Sujeiras
var qtd_Combustivel

var btn_right = Input.is_action_pressed("btn_right")



func getErros():
	return qtd_Erros

func getFerramentas():
	return qtd_Ferramentas
	
func getParafusos():
	return qtd_Parafusos

func getSujeiras():
	return qtd_Sujeiras
	
func getCombustivel():
	return qtd_Combustivel

func _ready():
	set_fixed_process(true)
	set_process(true)
	
	
	
func _process(delta):
	if btn_right:
		get_node("/root/globals").setScene("res://Garagem.scn")

func _fixed_process(delta):
	btn_right = Input.is_action_pressed("btn_right")





func _on_4f_pressed():
		Globals.qtd_Ferramentas = 4
		get_node("Sprite/3f").hide()
		get_node("Sprite/5f").hide()
func _on_5f_pressed():
		Globals.qtd_Ferramentas = 5
		get_node("Sprite/4f").hide()
		get_node("Sprite/3f").hide()
	
