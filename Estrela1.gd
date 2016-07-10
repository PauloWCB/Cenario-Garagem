
extends TextureButton


func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	pass



func _on_Estrela1_pressed():
	self.set_normal_texture(get_pressed_texture())
	get_node("../Carro").play("motor")
