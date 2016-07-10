
extends KinematicBody2D

var posInicialComb4 = Vector2()


func _ready():
	set_fixed_process(true)
	set_process_input(true)
	posInicialComb4 = self.get_pos()

func _on_Combustivel4_input_event( viewport, event, shape_idx ):
	# Botao esquerdo pressionado
	if (event.type == InputEvent.MOUSE_MOTION):
		if(Input.is_mouse_button_pressed(BUTTON_LEFT)):
			self.set_pos(Vector2(event.pos.x, event.pos.y))
			print("4 Barras de Combustivel")
	# Botão esquerdo do mouse soltado
	if(event.type == InputEvent.MOUSE_BUTTON):
		if(!Input.is_mouse_button_pressed(BUTTON_LEFT)):
			self.set_pos(posInicialComb4);
			print("Combustivel4 solto")

