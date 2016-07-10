
extends Node2D

# member variables here, example:
# var a=2
# var b="textvar"

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	pass




func _on_Area2D_input_event( viewport, event, shape_idx ):
	# Botão esquerdo do mouse pressionado
		if(Input.is_mouse_button_pressed(BUTTON_LEFT)):
			get_node("Estrela1").set_pressed_texture()
	


func _on_Estrela2_pressed():
	get_node("Estrela2").set_pressed_texture(get_icon("estrelaativada2.png"))
