
extends RigidBody2D

var posChaveFixada = Vector2(400,300)
var posInicio = Vector2()
var ChaveFixada = false

func _ready():
	posInicio = self.get_pos()
	
func _on_CapoColisao_body_enter( body ):
	if is_colliding():
		self.posInicio = set_pos(posChaveFixada);
		print("bateu")

