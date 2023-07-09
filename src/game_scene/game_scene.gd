extends Node2D

@onready var indicator = $CanvasLayer/Indicator
var indicator_visible: bool = false

@onready var timer = $Timer	
@onready var timer_label = $CanvasLayer/TimerLabel

@onready var cabinet_node = $CanvasLayer/Cabinet

@onready var item_in_hand: TextureRect = $CanvasLayer/ItemInHand

@onready var ing_btn_1: TextureButton = $CanvasLayer/Control/IngBTN1
@onready var ing_btn_2: TextureButton = $CanvasLayer/Control/IngBTN2
@onready var ing_btn_3: TextureButton = $CanvasLayer/Control/IngBTN3
@onready var ing_btn_4: TextureButton = $CanvasLayer/Control/IngBTN4

@onready var cauld_cont: Sprite2D = $CauldCont

@onready var score_label: Label = $CanvasLayer/ScoreLabel

var score: int = 0

var selected_ing: Ingredient = null

var ing_l: Array[Ingredient] = [null, null, null, null]

var current_potion: Potion

@onready var description_label = $CanvasLayer/PotionDescriptionLabel

var cauldron := Cauldron.new([])

func _ready():
	SoundManager.play_sound("door")
	timer.start()
	create_new_potion()

func _process(delta):
	if (indicator_visible && !cabinet_node.visible):
		indicator.global_position = get_viewport().get_mouse_position()
	
	item_in_hand.global_position = get_viewport().get_mouse_position() - Vector2(50, 50)
	
	cauld_cont.visible = !reverse_is_ingl_valid()
	cauld_cont.material.set_shader_parameter("color", cauldron.color)
	
	score_label.text = "Score: " + str(score)
	
	
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
	SoundManager.play_sound("interface click")
	cabinet_node.visible = true
	indicator_visible = false
	indicator.visible = indicator_visible

func _on_timer_timeout():
	Utils.score = score
	get_tree().change_scene_to_packed(load("res://src/game_over/game_over.tscn"))

func _on_cabinet_btn_mouse_entered():
	if (!cabinet_node.visible):
		indicator.set_text("Ingredient Cabinet (Left Click to Open)")
		indicator_visible = true
		indicator.visible = indicator_visible

func _on_cabinet_btn_mouse_exited():
	if (!cabinet_node.visible):
		indicator_visible = false
		indicator.visible = indicator_visible

func add_el_to_cauld(element: Ingredient):
	cauldron.add_ingredient(element)

func remove_el_form_cauld(element: Ingredient):
	cauldron.remove_ingredient_2(element)

func _on_ing_btn_1_pressed():
	if (selected_ing != null):
		add_el_to_cauld(selected_ing)
	else:
		if (ing_l[0] != null):
			remove_el_form_cauld(ing_l[0])
	ing_l[0] = selected_ing
	if (selected_ing != null):
		ing_btn_1.texture_normal = selected_ing.texture
		SoundManager.play_sound("brew")
	else:
		ing_btn_1.texture_normal = null
	selected_ing = null
	item_in_hand.visible = false

func _on_ing_btn_2_pressed():
	if (selected_ing != null):
		add_el_to_cauld(selected_ing)
	else:
		if (ing_l[1] != null):
			remove_el_form_cauld(ing_l[1])
	ing_l[1] = selected_ing
	if (selected_ing != null):
		ing_btn_2.texture_normal = selected_ing.texture
		SoundManager.play_sound("brew")
	else:
		ing_btn_2.texture_normal = null
	selected_ing = null
	item_in_hand.visible = false

func _on_ing_btn_3_pressed():
	if (selected_ing != null):
		add_el_to_cauld(selected_ing)
	else:
		if (ing_l[2] != null):
			remove_el_form_cauld(ing_l[2])
	ing_l[2] = selected_ing
	if (selected_ing != null):
		ing_btn_3.texture_normal = selected_ing.texture
		SoundManager.play_sound("brew")
	else:
		ing_btn_3.texture_normal = null
	selected_ing = null
	item_in_hand.visible = false

func _on_ing_btn_4_pressed():
	if (selected_ing != null):
		add_el_to_cauld(selected_ing)
	else:
		if (ing_l[3] != null):
			remove_el_form_cauld(ing_l[3])
	ing_l[3] = selected_ing
	if (selected_ing != null):
		ing_btn_4.texture_normal = selected_ing.texture
		SoundManager.play_sound("brew")
	else:
		ing_btn_4.texture_normal = null
	selected_ing = null
	item_in_hand.visible = false

func _on_mix_btn_pressed():
	
	if (is_ingl_valid()):
		SoundManager.play_sound("brew")
		if Utils.compare_potions(ing_l, current_potion.ingr_array) == true:
			score += 1
			create_new_potion()
			ing_l.fill(null)
			print(ing_l)
			ing_btn_1.texture_normal = null
			ing_btn_2.texture_normal = null
			ing_btn_3.texture_normal = null
			ing_btn_4.texture_normal = null
	else:
		print("NAH")

func is_ingl_valid() -> bool:
	var ok: bool = true
	for i in ing_l:
		if (i == null):
			ok = false
			break
	return ok

func reverse_is_ingl_valid() -> bool:
	var ok: bool = true
	for i in ing_l:
		if (i != null):
			ok = false
			break
	return ok

func create_new_potion():
	current_potion = Potion.randomize_potion()
	update_journal_display()

func update_journal_display():
	$CanvasLayer/PotionNameLabel.text = current_potion.potion_name
	$Scrib.material.set_shader_parameter("color", current_potion.color)
	
	var ok: bool = 0
	
	description_label.text = ""
	
	description_label.text += "It is a "
	
	match current_potion.prop_array[0]:
		0:
			description_label.text += "fine powder substance.\n\n"
		1:
			description_label.text += "semisolid, cream-like consistency.\n\n"
		2:
			description_label.text += "watery, liquid concoction.\n\n"
	
	description_label.text += "In terms of taste, the substance is"
	for i in range(5):
		if current_potion.prop_array[i + 1] != 0:
			
			if ok == true:
				description_label.text += ","
			
			match current_potion.prop_array[i + 1]:
				1:
					description_label.text += " slightly"
				2:
					description_label.text += ""
				3:
					description_label.text += " very"
			
			match i + 1:
				1:
					description_label.text += " sweet"
				2:
					description_label.text += " sour"
				3:
					description_label.text += " salty"
				4:
					description_label.text += " bitter"
				5:
					description_label.text += " mild"
			ok = 1
	
	ok = false
	description_label.text += ".\n\nThe smell of the substance is"
	for i in range(3):
		if current_potion.prop_array[i + 6] != 0:
			
			if ok == true:
				description_label.text += ","
			
			match current_potion.prop_array[i + 1]:
				1:
					description_label.text += " faintly"
				2:
					description_label.text += ""
				3:
					description_label.text += " pungently"
			
			match i + 6:
				6:
					description_label.text += " putrid"
				7:
					description_label.text += " vegetal"
				8:
					description_label.text += " metalic"
			ok = 1
	
	description_label.text += ".\n\nThis substance has"
	match current_potion.prop_array[9]:
		0:
			description_label.text += " no magic properties."
		1:
			description_label.text += " some magical powers."
		2:
			description_label.text += " great magical powers."
