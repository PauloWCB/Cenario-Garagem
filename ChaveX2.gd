
extends KinematicBody2D

var posInicial = Vector2()
var posChaveFixada = Vector2(600,700)
var ChaveFixada = false

func _ready():
	posInicial = self.get_pos()
	




func _on_ChaveX_input_event( viewport, event, shape_idx ):
	# Botao esquerdo pressionado
		if (event.type == InputEvent.MOUSE_MOTION):
			if(Input.is_mouse_button_pressed(BUTTON_LEFT)):
				self.set_pos(Vector2(event.pos.x, event.pos.y))
				print("Chave X selecionada")
	# Botão esquerdo do mouse soltado
		if(event.type == InputEvent.MOUSE_BUTTON):
			if(!Input.is_mouse_button_pressed(BUTTON_LEFT)):
				self.set_pos(posInicial);
				print("Chave X solta")



func _on_ColisaoChave_body_enter( body ):
	if (body == self):
		get_node("Sprite").hide()
		get_node("../ColisaoChave").set_opacity(1)
		get_node("../Flecha").show()
		ChaveFixada = true
		if (ChaveFixada):
			get_node("MuitoBem").play("Muito_Bem")
