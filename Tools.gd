extends Node2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Bibit_pressed():
	Input.set_custom_mouse_cursor(load('res://Assets/benih cursor.png'))
	GlobalVar.benih = true
	GlobalVar.sabit = false
	GlobalVar.siraman = false
	pass # Replace with function body.


func _on_Siraman_pressed():
	Input.set_custom_mouse_cursor(load('res://Assets/siraman cursor.png'))
	GlobalVar.siraman = true
	GlobalVar.benih = false
	GlobalVar.sabit = false
	pass # Replace with function body.

func _input(event):
	if event is InputEventMouseButton:
		if event.get_button_index()== BUTTON_RIGHT and event.is_pressed():
			Input.set_custom_mouse_cursor(null)
			GlobalVar.benih = false
			GlobalVar.siraman = false
			GlobalVar.sabit = false

func _on_Sabit_pressed():
	Input.set_custom_mouse_cursor(load('res://Assets/sabit cursor.png'))
	GlobalVar.sabit = true
	GlobalVar.siraman = false
	GlobalVar.benih = false
	pass # Replace with function body.
	

