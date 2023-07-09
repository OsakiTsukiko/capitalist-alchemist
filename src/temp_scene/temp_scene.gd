extends Node2D



func _on_button_pressed():
	var potion = Utils.randomize_potion()
	print(potion.color)
	print(potion.properties)
	$CanvasLayer/TextureRect.material.set_shader_parameter("color", potion.color)
