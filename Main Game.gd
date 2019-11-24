extends Control

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var failed = false
var timer = 0
var tanah1 
var tanah2
var tanah3
var tanah4
var tanah5
# Called when the node enters the scene tree for the first time.
func _ready():
	GlobalVar.jumBenih = 0
	GlobalVar.jumPestisida = 0
	GlobalVar.jumPupuk = 0
	GlobalVar.money = 100
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	tanah1 = get_node("tanah1").status
	tanah2 = get_node("tanah2").status
	tanah3 = get_node("tanah3").status
	tanah4 = get_node("tanah4").status
	tanah5 = get_node("tanah5").status
	get_node('Tools/Bibit/stok').set_text(str(GlobalVar.jumBenih))
	get_node('Tools/pupuk/stok').set_text(str(GlobalVar.jumPupuk))
	get_node('Tools/pestisida/stok').set_text(str(GlobalVar.jumPestisida))
	if GlobalVar.jumBenih == 0 && tanah1 == "Tanah" && tanah2 == "Tanah" && tanah3 == "Tanah" && tanah4 == "Tanah" && tanah5 == "Tanah" && GlobalVar.money < 50:
		failed = true
	else:
		failed = false

	if failed:
		timer += delta
	else:
		timer = 0

	if timer > 3:
		get_tree().change_scene("res://Game Over.tscn")
	print(failed)
	pass


