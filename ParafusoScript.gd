extends KinematicBody2D

var posParafusoXFixado = Vector2(1140,1000)
var posInicial = Vector2()
var ParafusoFixado = false
var numPares = Globals.get("numPares")

var btn_right = Input.is_action_pressed("btn_right")

func _process(delta):
	posInicial = self.get_pos()
	if btn_right:
		get_node("/root/globals").setScene("res://Abastecimento.scn")

func _fixed_process(delta):
	if(ParafusoFixado):
		if(numPares == 3):
			get_node("../ParafusoReta").hide()
			get_node("../ParafusoHexagonal").hide()
			get_node("../ParafusoEstrela").hide()
			get_node("../ParafusoQuadratico").hide()
			get_node("../ChaveReta").show()
			get_node("../ChaveBoca").show()
			get_node("../ChaveX").show()
			#get_node("../ChaveHexagonal").show()
			#get_node("../ChaveVerde").show()
		if(numPares == 4):
			get_node("../ParafusoReta").hide()
			get_node("../ParafusoHexagonal").hide()
			get_node("../ParafusoEstrela").hide()
			get_node("../ParafusoQuadratico").hide()
			get_node("../ChaveReta").show()
			get_node("../ChaveBoca").show()
			get_node("../ChaveX").show()
			get_node("../ChaveHexagonal").show()
		if(numPares == 5):
			get_node("../ParafusoReta").hide()
			get_node("../ParafusoHexagonal").hide()
			get_node("../ParafusoEstrela").hide()
			get_node("../ParafusoQuadratico").hide()
			get_node("../ChaveReta").show()
			get_node("../ChaveBoca").show()
			get_node("../ChaveX").show()
			get_node("../ChaveHexagonal").show()
			get_node("../ChaveVerde").show()
		
	btn_right = Input.is_action_pressed("btn_right")

func _ready():
	posInicial = self.get_pos()
	set_fixed_process(true)
	set_process(true)
	
	if(numPares == 3):
		get_node("../ParafusoEstrela").hide()
		get_node("../ParafusoHexagonal").hide()
	if(numPares == 4):
		get_node("../ParafusoHexagonal").hide()



func _on_ColisaoParafuso_body_enter( body ):
	if(body == self ):
		self.set_pos(posParafusoXFixado)
		print("Parafuso fixado no buraco")
		ParafusoFixado = true
		get_node("Excelente").play("Excelente")
		get_node("../ColisaoChave").show()
		get_tree().get_root().get_node("Garagem/Label").hide()
		get_tree().get_root().get_node("Garagem/Label1").show()




func _on_ParafusoX_input_event( viewport, event, shape_idx ):
	if(!ParafusoFixado):
		# Botão esquerdo do mouse pressionado
		if (event.type == InputEvent.MOUSE_MOTION):
			if(Input.is_mouse_button_pressed(BUTTON_LEFT)):
				self.set_pos(Vector2(event.pos.x, event.pos.y))
				print("Parafuso de fenda selecionado")
		# Botão esquerdo do mouse soltado
		if(event.type == InputEvent.MOUSE_BUTTON):
			if(!Input.is_mouse_button_pressed(BUTTON_LEFT)):
				self.set_pos(posInicial);
				print("Parafuso solto")
		
