extends Control

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	get_node('Tools/Bibit/stok').set_text(str(GlobalVar.jumBenih))
	get_node('Tools/pupuk/stok').set_text(str(GlobalVar.jumPupuk))
	get_node('Tools/pestisida/stok').set_text(str(GlobalVar.jumPestisida))
	
	pass


