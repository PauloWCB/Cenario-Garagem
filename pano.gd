extends KinematicBody2D

var posChaveFendaFixada = Vector2(520,125)
var posInicial = Vector2()

var time_start = 0
var time_now = 0


var btn_right = Input.is_action_pressed("btn_right")

const OPACITY_OFFSET = 0.8


var a_f0pacity = 1.0
var b_f0pacity = 1.0
var c_f0pacity = 1.0
var d_f0pacity = 1.0
var e_f0pacity = 1.0

var teste = true
var seconds = 0
var minutes = 0

var numSujeiras = Globals.get("numSujeiras")

func _fixed_process(delta):
	if (numSujeiras == 3):
		get_node("../Sujeira5").hide()
		get_node("../Sujeira4").hide()
	if (numSujeiras == 4):
		get_node("../Sujeira5").hide()
	btn_right = Input.is_action_pressed("btn_right")
	

func _ready():
	time_start = OS.get_unix_time()
	set_process(true)
	posInicial = self.get_pos()
	get_node("../PianoMusic").play()
	set_fixed_process(true)
	

func _process(delta):
	time_now = OS.get_unix_time()
	var elapsed = time_now - time_start
	minutes = elapsed / 60
	seconds = elapsed % 60
	var str_elapsed = "%02d : %02d" % [minutes, seconds]
	print("elapsed : ", str_elapsed)
	if ((a_f0pacity + b_f0pacity + c_f0pacity + d_f0pacity) < (-1.5)):
		get_node("../MensagemFinal").show()
		
	if btn_right:
		get_node("/root/globals").setScene("res://CenaFinal.scn")
		
	
		
	
	
func _on_Pano_input_event( viewport, event, shape_idx ):
		# Botão esquerdo do mouse pressionado
		if (event.type == InputEvent.MOUSE_MOTION):
			if(Input.is_mouse_button_pressed(BUTTON_LEFT)):
				self.set_pos(Vector2(event.pos.x, event.pos.y))
				print("Pano de limpar selecionado")
		# Botão esquerdo do mouse soltado
		if(event.type == InputEvent.MOUSE_BUTTON):
			if(!Input.is_mouse_button_pressed(BUTTON_LEFT)):
				self.set_pos(posInicial);
				print("Pano solto")
		



func _on_Sujeira1_body_enter( body ):
	if (body == self):
		if(a_f0pacity > -1):
			a_f0pacity -= (OPACITY_OFFSET)
		get_node("../Sujeira1/Suj1").set_opacity(a_f0pacity)
		print (a_f0pacity)
		update()
		if(a_f0pacity < 0):
			if(a_f0pacity > (-0.3)):
				get_node("ContinueAssim").play("ContinueAssim")

func _on_Sujeira2_body_enter( body ):
	if (body == self):
		if(b_f0pacity > -1):
			b_f0pacity -= (OPACITY_OFFSET)
		get_node("../Sujeira2/Suj2").set_opacity(b_f0pacity)
		update()
		if(b_f0pacity < 0):
			if(b_f0pacity > (-0.3)):
				get_node("OtimoTrabalho").play("OtimoTrabalho")



func _on_Sujeira3_body_enter( body ):
	if (body == self):
		if(c_f0pacity > -1):
			c_f0pacity -= (OPACITY_OFFSET)
		get_node("../Sujeira3/Suj3").set_opacity(c_f0pacity)
		update()
		if(c_f0pacity < 0):
			if(c_f0pacity > (-0.3)):
				get_node("OtimoTrabalho").play("ContinueAssim")



func _on_Sujeira4_body_enter( body ):
	if (body == self):
		if(d_f0pacity > -1):
			d_f0pacity -= (OPACITY_OFFSET)
		get_node("../Sujeira4/Suj4").set_opacity(d_f0pacity)
		update()
		if(d_f0pacity < 0):
			if (d_f0pacity > (-0.3)):
				get_node("OtimoTrabalho").play("OtimoTrabalho")
	
func _on_Sujeira5_body_enter( body ):
	if (body == self):
		if(e_f0pacity > -1):
			e_f0pacity -= (OPACITY_OFFSET)
		get_node("../Sujeira5/Suj5").set_opacity(e_f0pacity)
		update()
		if(e_f0pacity < 0):
			if (e_f0pacity > (-0.3)):
				get_node("OtimoTrabalho").play("OtimoTrabalho")
