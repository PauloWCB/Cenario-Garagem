extends Node

var currentScene = null

var qtd_Erros = 0
var qtd_Pares = 0
var qtd_Sujeiras = 0
var qtd_Combustivel = 0
var Comb

func getErros():
	return qtd_Erros




func _ready():
	currentScene = get_tree().get_root().get_child(get_tree().get_root().get_child_count() -1)

func setScene(scene):
	currentScene.queue_free()
	var s = ResourceLoader.load(scene)
	currentScene = s.instance()
	get_tree().get_root().add_child(currentScene)