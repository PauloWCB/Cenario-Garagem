
extends KinematicBody2D

var posInicial = Vector2()

func _ready():
	posInicial = self.get_pos()




func _on_ChaveHexagonal_input_event( viewport, event, shape_idx ):
	# Botão esquerdo do mouse pressionado
		if (event.type == InputEvent.MOUSE_MOTION):
			if(Input.is_mouse_button_pressed(BUTTON_LEFT)):
				self.set_pos(Vector2(event.pos.x, event.pos.y))
				print("Chave de 6 lados selecionada")
				
		# Botão esquerdo do mouse soltado
		if(event.type == InputEvent.MOUSE_BUTTON):
			if(!Input.is_mouse_button_pressed(BUTTON_LEFT)):
				self.set_pos(posInicial);
				print("Chave de fenda solta")
