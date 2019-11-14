extends Control

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	get_node('Sprite/bibit/stock').set_text(str(GlobalVar.jumBenih))
	get_node('Sprite/pupuk/stock').set_text(str(GlobalVar.jumPupuk))
	get_node('Sprite/pestisida/stock').set_text(str(GlobalVar.jumPestisida))
	get_node('/root/MainGame/CanvasLayer2/Shop/Label').set_text(str(GlobalVar.money))
	pass


func _on_Button_pressed():
		var pause_state = not get_tree().paused
		get_tree().paused = pause_state
		visible = pause_state
	 # Replace with function body.


func _on_Shop_pressed():
		var pause_state = not get_tree().paused
		get_tree().paused = pause_state
		visible = pause_state
	 # Replace with function body.


func _on_bibit_pressed():
	if GlobalVar.money >=50:
		GlobalVar.money -=50
		GlobalVar.jumBenih += 1
	pass # Replace with function body.


func _on_pupuk_pressed():
	if GlobalVar.money >=30:
		GlobalVar.money -=30
		GlobalVar.jumPupuk += 1
	pass # Replace with function body.


func _on_pestisida_pressed():
	if GlobalVar.money >=20:
		GlobalVar.money -=20
		GlobalVar.jumPestisida += 1
	pass # Replace with function body.
