
extends KinematicBody2D

var posInicial = Vector2(550,135)
var ParafusoFixado = false
var qtd_erro = 0

func _ready():
	posInicial = self.get_pos()




func _on_ParafusoEstrela_input_event( viewport, event, shape_idx ):
		# Botão esquerdo do mouse pressionado
		if (event.type == InputEvent.MOUSE_MOTION):
			if(Input.is_mouse_button_pressed(BUTTON_LEFT)):
				self.set_pos(Vector2(event.pos.x, event.pos.y))
				print("Parafuso estrela selecionado")
		# Botão esquerdo do mouse soltado
		if(event.type == InputEvent.MOUSE_BUTTON):
			if(!Input.is_mouse_button_pressed(BUTTON_LEFT)):
				self.set_pos(posInicial);
				print("Parafuso solto")
				if(ParafusoFixado == false):
					qtd_erro +=  1
					print(qtd_erro)
