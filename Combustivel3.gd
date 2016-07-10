
extends KinematicBody2D

var posInicialComb3 = Vector2()
var posCombustivelFixado = Vector2(600,345)
var CombustivelFixado = false
var Comb = Globals.get("Comb")


func _fixed_process(delta):
	if(Comb == 3):
		print ("ALO")
		get_node("../Combustivel4").hide()
		get_node("../Combustivel5").hide()
	if(Comb == 4):
		get_node("../Combustivel5").hide()
	if(Comb == 5):
		pass

func _ready():
	set_fixed_process(true)
	#set_process_input(true)
	#set_process(true)
	posInicialComb3 = self.get_pos()
	get_node("../FolkGuitar").play()
	
	

	


func _on_Combustivel3_input_event( viewport, event, shape_idx ):
	if (!CombustivelFixado):
			# Botao esquerdo pressionado
		if (event.type == InputEvent.MOUSE_MOTION):
			if(Input.is_mouse_button_pressed(BUTTON_LEFT)):
				self.set_pos(Vector2(event.pos.x, event.pos.y))
				print("3 Barras de Combustivel")
		# Botão esquerdo do mouse soltado
		if(event.type == InputEvent.MOUSE_BUTTON):
			if(!Input.is_mouse_button_pressed(BUTTON_LEFT)):
				self.set_pos(posInicialComb3);
				print("Combustivel3 solto")

func _on_ColisaoCombustivel_body_enter( body ):
	if( body == self ):
		self.set_pos(posCombustivelFixado)
		CombustivelFixado = true
		print ("Abastecido!")
		get_tree().get_root().get_node("Abastecimento/ColisaoCombustivel").hide()
		self.hide()
		get_node("../CombCheio").show()
		get_node("CaminhoCerto").play("CaminhoCerto")

