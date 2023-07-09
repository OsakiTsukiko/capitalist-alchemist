extends Node2D



func _on_button_pressed():
	var potion = Potion.randomize_potion()
	print(potion.color)
	print(potion.prop_array)
	$CanvasLayer/TextureRect.material.set_shader_parameter("color", potion.color)
	
	$CanvasLayer/Label.text = potion.potion_name
