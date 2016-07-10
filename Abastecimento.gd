
extends Control

var btn_right = Input.is_action_pressed("btn_right")
var Comb = Globals.get("Comb")


func _process(delta):
	if btn_right:
		get_node("/root/globals").setScene("res://LavaCarro.scn")

func _fixed_process(delta):
	btn_right = Input.is_action_pressed("btn_right")
	

func _ready():
	set_process(true)
	set_fixed_process(true)

