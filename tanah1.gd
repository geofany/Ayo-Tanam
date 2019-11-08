	extends Button

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var status = "Tanah"
var animation_jagung
var siraman = 0
var siram = true
var air
# Called when the node enters the scene tree for the first time.
func _ready():
	animation_jagung = get_child(0)
	air = 100.0
	
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):

	if air <= 30:
		if status == "Jagung Kecil Kering NW":
			status = "Jagung Kecil Layu NW"
			change_status(status)
		elif status == "Jagung Sedang Kering NW":
			status = "Jagung Sedang Layu NW"
			change_status(status)
	elif air <= 50:
		if status == "Jagung Kecil Normal NW":
			status = "Jagung Kecil Kering NW"
			change_status(status)
		elif status == "Jagung Sedang Normal NW":
			status = "Jagung Sedang Kering NW"
			change_status(status)
	
	print(status)
	print(air)
	print(siraman)
	
	if air == 0:
		status = "Tanah"
		change_status(status)
		siraman = 0
		air = 100
		get_node("AirTimer").stop()
		

	if siraman == 2:
		status = "Jagung Kecil Normal"
		change_status(status)
		siram = false
		
		siraman = 3
	elif siraman == 5:
		if status == "Jagung Kecil Normal Basah":
			status = "Jagung Sedang Normal"
		if status == "Jagung Kecil Kering Basah":
			status = "Jagung Sedang Kering"
		if status == "Jagung Kecil Layu Basah":
			status = "Jagung Sedang Layu"
		change_status(status)
		siram = false
		siraman = 6
	elif siraman ==  8:
		if status == "Jagung Sedang Normal Basah":
			status = "Jagung Besar Normal"
		if status == "Jagung Sedang Kering Basah":
			status = "Jagung Besar Kering"
		if status == "Jagung Sedang Layu Basah":
			status = "Jagung Besar Layu"
		change_status(status)
		siraman = 0
		get_node("AirTimer").stop()
		
	get_node("AirBar").value = air
	if air == 70 && (status == "Jagung Kecil Normal" || status == "Jagung Kecil Normal Basah" || status == "Jagung Sedang Normal" || status == "Jagung Sedang Normal Basah" || status == "Benih" || status == "Benih Basah"):
		get_node("TumbuhTimer").start(0)
	if air == 50 && (status == "Jagung Kecil Kering" || status == "Jagung Kecil Kering Basah" || status == "Jagung Sedang Kering" || status == "Jagung Sedang Kering Basah"):
		get_node("TumbuhTimer").start(0)
	if air == 30 && (status == "Jagung Kecil Layu" || status == "Jagung Kecil Layu Basah" || status == "Jagung Sedang Layu" || status == "Jagung Sedang Layu Basah"):
		get_node("TumbuhTimer").start(0)
	pass


func _on_tanah1_pressed():
	if status == "Tanah":
		if GlobalVar.benih == true:
			get_node("AirTimer").start(1)
			status = "Benih"
			change_status(status)
			siram = false
			
	if status == "Benih":
		if GlobalVar.siraman == true && siram == true:
			status = "Benih Basah"
			tumbuh(status)

	elif status == "Benih NW":
		if GlobalVar.siraman == true && siram == true:
			status = "Benih Basah"
			tumbuh(status)

	if status == "Jagung Kecil Normal":
		if GlobalVar.siraman == true && siram == true:
			status = "Jagung Kecil Normal Basah"
			tumbuh(status)
			
	elif status == "Jagung Kecil Normal NW":
		if GlobalVar.siraman == true && siram == true:
			status = "Jagung Kecil Normal Basah"
			tumbuh(status)

	if status == "Jagung Kecil Kering":
		if GlobalVar.siraman == true && siram == true:
			status = "Jagung Kecil Kering Basah"
			tumbuh(status)
			
	elif status == "Jagung Kecil Kering NW":
		if GlobalVar.siraman == true && siram == true:
			status = "Jagung Kecil Kering Basah"
			tumbuh(status)
			
	if status == "Jagung Kecil Layu":
		if GlobalVar.siraman == true && siram == true:
			status = "Jagung Kecil Layu Basah"
			tumbuh(status)
			
	elif status == "Jagung Kecil Layu NW":
		if GlobalVar.siraman == true && siram == true:
			status = "Jagung Kecil Layu Basah"
			tumbuh(status)
			
	if status == "Jagung Sedang Normal":
		if GlobalVar.siraman == true && siram == true:
			status = "Jagung Sedang Normal Basah"
			tumbuh(status)
			
	elif status == "Jagung Sedang Normal NW":
		if GlobalVar.siraman == true && siram == true:
			status = "Jagung Sedang Normal Basah"
			tumbuh(status)
	
	if status == "Jagung Sedang Kering":
		if GlobalVar.siraman == true && siram == true:
			status = "Jagung Sedang Kering Basah"
			tumbuh(status)
			
	elif status == "Jagung Sedang Kering NW":
		if GlobalVar.siraman == true && siram == true:
			status = "Jagung Sedang Kering Basah"
			tumbuh(status)
			
	if status == "Jagung Sedang Layu":
		if GlobalVar.siraman == true && siram == true:
			status = "Jagung Sedang Layu Basah"
			tumbuh(status)
			
	elif status == "Jagung Sedang Layu NW":
		if GlobalVar.siraman == true && siram == true:
			status = "Jagung Sedang Layu Basah"
			tumbuh(status)
			
	if status == "Jagung Besar Normal":
		if GlobalVar.sabit == true:
			status = "Tanah"
			change_status(status)			
	
	if status == "Jagung Besar Kering":
		if GlobalVar.sabit == true:
			status = "Tanah"
			change_status(status)			
	
	if status == "Jagung Besar Layu":
		if GlobalVar.sabit == true:
			status = "Tanah"
			change_status(status)			
	pass # Replace with function body.

func change_status(status):
	animation_jagung.play(status)

func tumbuh(status):
	air = 100
	change_status(status)
	siraman += 1
	siram = false
	

func _on_TumbuhTimer_timeout():
	if status == "Benih" || status == "Benih Basah":
		status = "Benih NW"
	if status == "Jagung Kecil Normal" || status == "Jagung Kecil Normal Basah":
		status = "Jagung Kecil Normal NW"
	if status == "Jagung Sedang Normal" || status == "Jagung Sedang Normal Basah":
		status = "Jagung Sedang Normal NW"
	if status == "Jagung Kecil Kering" || status == "Jagung Kecil Kering Basah":
		status = "Jagung Kecil Kering NW"  
	if status == "Jagung Sedang Kering" || status == "Jagung Sedang Kering Basah":
		status = "Jagung Sedang Kering NW"  
	if status == "Jagung Kecil Layu" || status == "Jagung Kecil Layu Basah":
		status = "Jagung Kecil Layu NW"  
	if status == "Jagung Sedang Layu" || status == "Jagung Sedang Layu Basah":
		status = "Jagung Sedang Layu NW"  
	change_status(status)
	siram = true
	pass # Replace with function body.


func _on_AirTimer_timeout():
	air -=5
	pass # Replace with function body.
