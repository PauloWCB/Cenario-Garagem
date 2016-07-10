
extends TextureButton

# member variables here, example:
# var a=2
# var b="textvar"

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	pass




func _on_Estrela2_pressed():
	self.set_normal_texture(get_pressed_texture())
	get_node("../Estrela1").set_normal_texture(get_pressed_texture())
	get_node("../Carro").play("motor")
	
