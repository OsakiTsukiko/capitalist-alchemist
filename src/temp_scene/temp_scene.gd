extends Node2D



func _on_button_pressed():
	var ingr_arr: Array[Ingredient]
	var lbl_arr: String = "."
	
	for i in range(4):
		var ingr = Utils.ingredient_list[ randi() % 15 ]
		ingr_arr.append(ingr)
		lbl_arr = lbl_arr + ingr.id
	
	var potion = Potion.new(ingr_arr)
	print(potion.color)
	$CanvasLayer/TextureRect.material.set_shader_parameter("color", potion.color)
	$CanvasLayer/Label.set_text(lbl_arr)
