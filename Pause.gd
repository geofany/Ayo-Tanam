extends Control

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_ResumeBtn_pressed():
	var pause = not get_tree().paused
	get_tree().paused = pause
	visible = pause
	pass # Replace with function body.


func _on_BackBtn_pressed():
	get_tree().change_scene("res://Main Menu.tscn")
	get_tree().paused = false
	pass # Replace with function body.


func _on_PauseBtn_pressed():
	var pause = not get_tree().paused
	get_tree().paused = pause
	visible = pause
	pass # Replace with function body.