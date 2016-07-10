
extends KinematicBody2D

var posInicial = Vector2(135,135)
var ParafusoFixado = false
var qtd_erro = 0



func _ready():
	posInicial = self.get_pos()
	Globals.set("qtd_erro", 0)


func _on_ParafusoReta_input_event( viewport, event, shape_idx ):
		# Botão esquerdo do mouse pressionado
		if (event.type == InputEvent.MOUSE_MOTION):
			if(Input.is_mouse_button_pressed(BUTTON_LEFT)):
				self.set_pos(Vector2(event.pos.x, event.pos.y))
				print("Parafuso de reta selecionado")
		# Botão esquerdo do mouse soltado
		if(event.type == InputEvent.MOUSE_BUTTON):
			if(!Input.is_mouse_button_pressed(BUTTON_LEFT)):
				self.set_pos(posInicial);
				print("Parafuso solto")
				if(ParafusoFixado == false):
					qtd_erro +=  1
					print(qtd_erro)