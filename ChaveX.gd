
extends KinematicBody2D

var posChaveFixada = Vector2(500,500)
var posInicial = Vector2()
var ChaveFixada = false

func _ready():
	posInicial = self.get_pos()
	set_fixed_process(true)
	set_process(true)




func _on_ColisaoChave_body_enter( body ):
	if(body == self):
			self.set_pos(posChaveFixada)
			get_node("MuitoBem").play("Muito_Bem")
			#get_node("../ColisaoChave/ChaveColisao").hide()
			get_node("../Flecha").show()
			ChaveFixada = true

func _on_ChaveX_input_event( viewport, event, shape_idx ):
	# Botão esquerdo do mouse pressionado
		if (event.type == InputEvent.MOUSE_MOTION):
			if(Input.is_mouse_button_pressed(BUTTON_LEFT)):
				self.set_pos(Vector2(event.pos.x, event.pos.y))
				print("Chave de fenda selecionada")
				
		# Botão esquerdo do mouse soltado
		if(event.type == InputEvent.MOUSE_BUTTON):
			if(!Input.is_mouse_button_pressed(BUTTON_LEFT)):
				self.set_pos(posInicial);
				print("Chave de fenda solta")
				



