extends Node2D

@onready var indicator = $CanvasLayer/Indicator
var indicator_visible: bool = false

@onready var timer = $Timer	
@onready var timer_label = $CanvasLayer/TimerLabel

func _ready():
	timer.start()

func _process(delta):
	if (indicator_visible):
		indicator.global_position = get_viewport().get_mouse_position()
	
	var time_left = "";
	var tl = timer.time_left
	if (int(tl / 60) < 10):
		time_left += "0" + str(int(tl/60))
	else:
		time_left += str(int(tl/60)) 
	# This will never happen, max min is 5, but eh
	time_left += ":"
	var tli = int(tl)
	if (tli % 60 < 10):
		time_left += "0" + str(tli % 60)
	else:
		time_left += str(tli % 60)
	timer_label.text = time_left

func _on_cabinet_btn_pressed():
	print("_on_cabinet_btn_pressed")


# AREA STUFF
func _on_cabinet_area_mouse_entered():
	indicator.set_text("Ingredient Cabinet (Left Click to Open)")
	indicator_visible = true
	indicator.visible = indicator_visible

func _on_cabinet_area_mouse_exited():
	indicator_visible = false
	indicator.visible = indicator_visible


func _on_timer_timeout():
	pass # Replace with function body.
