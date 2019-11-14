extends Node2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if GlobalVar.jumBenih > 0:
		get_node('Bibit/bibit').play('av')
	elif GlobalVar.jumBenih == 0:
		get_node('Bibit/bibit').play('unv')
		if GlobalVar.benih:
			Input.set_custom_mouse_cursor(null)
			GlobalVar.benih = false
	if GlobalVar.jumPupuk > 0:
		get_node('pupuk/Pupuk').play('av')
	elif GlobalVar.jumPupuk == 0:
		get_node('pupuk/Pupuk').play('unv')
		if GlobalVar.pupuk:
			Input.set_custom_mouse_cursor(null)
			GlobalVar.pupuk = false
	if GlobalVar.jumPestisida > 0:
		get_node('pestisida/Pestisida').play('av')
	elif GlobalVar.jumPestisida == 0:
		get_node('pestisida/Pestisida').play('unv')
		if GlobalVar.pestisida:
			Input.set_custom_mouse_cursor(null)
			GlobalVar.pestisida = false
		
	pass


func _on_Bibit_pressed():
	if GlobalVar.jumBenih > 0:
		Input.set_custom_mouse_cursor(load('res://Assets/benih cursor.png'))
		GlobalVar.benih = true
		GlobalVar.sabit = false
		GlobalVar.siraman = false
		GlobalVar.pestisida = false
		GlobalVar.pupuk = false
	pass # Replace with function body.


func _on_Siraman_pressed():
	Input.set_custom_mouse_cursor(load('res://Assets/siraman cursor.png'))
	GlobalVar.siraman = true
	GlobalVar.benih = false
	GlobalVar.sabit = false
	GlobalVar.pestisida = false
	GlobalVar.pupuk = false
	pass # Replace with function body.

func _input(event):
	if event is InputEventMouseButton:
		if event.get_button_index()== BUTTON_RIGHT and event.is_pressed():
			Input.set_custom_mouse_cursor(null)
			GlobalVar.benih = false
			GlobalVar.siraman = false
			GlobalVar.sabit = false
			GlobalVar.pestisida = false
			GlobalVar.pupuk = false

func _on_Sabit_pressed():
	Input.set_custom_mouse_cursor(load('res://Assets/sabit cursor.png'))
	GlobalVar.sabit = true
	GlobalVar.siraman = false
	GlobalVar.benih = false
	GlobalVar.pestisida = false
	GlobalVar.pupuk = false
	pass # Replace with function body.
	



func _on_pupuk_pressed():
	if GlobalVar.jumPupuk > 0:
		Input.set_custom_mouse_cursor(load('res://Assets/pupuk cursor.png'))
		GlobalVar.pupuk = true
		GlobalVar.pestisida = false
		GlobalVar.sabit = false
		GlobalVar.siraman = false
		GlobalVar.benih = false
	pass # Replace with function body.


func _on_pestisida_pressed():
	if GlobalVar.jumPestisida > 0:
		Input.set_custom_mouse_cursor(load('res://Assets/pestisida cursor.png'))
		GlobalVar.pestisida = true
		GlobalVar.pupuk = false
		GlobalVar.sabit = false
		GlobalVar.siraman = false
		GlobalVar.benih = false
	pass # Replace with function body.
