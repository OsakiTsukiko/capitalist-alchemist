extends Node2D

@onready var indicator = $CanvasLayer/Indicator
var indicator_visible: bool = false

@onready var timer = $Timer	
@onready var timer_label = $CanvasLayer/TimerLabel

@onready var cabinet_node = $CanvasLayer/Cabinet

@onready var item_in_hand: TextureRect = $CanvasLayer/ItemInHand

var selected_ing: Ingredient = null

func _ready():
	timer.start()

func _process(delta):
	if (indicator_visible && !cabinet_node.visible):
		indicator.global_position = get_viewport().get_mouse_position()
	
	item_in_hand.global_position = get_viewport().get_mouse_position() - Vector2(50, 50)
	
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

func select_ing(ing: Ingredient):
	selected_ing = ing
	item_in_hand.texture = ing.texture
	item_in_hand.visible = true
	
func _on_cabinet_btn_pressed():
	cabinet_node.visible = true
	indicator_visible = false
	indicator.visible = indicator_visible

func _on_timer_timeout():
	pass # Replace with function body.

func _on_cabinet_btn_mouse_entered():
	if (!cabinet_node.visible):
		indicator.set_text("Ingredient Cabinet (Left Click to Open)")
		indicator_visible = true
		indicator.visible = indicator_visible

func _on_cabinet_btn_mouse_exited():
	if (!cabinet_node.visible):
		indicator_visible = false
		indicator.visible = indicator_visible
