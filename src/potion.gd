class_name Potion
extends Node

var potion_name: String
var color: Color
var ingr_array: Array[Ingredient]
var properties: Array[int]


func _init(p_ingr_array: Array[Ingredient]):
	properties.resize(10)
	properties.fill(0)
	ingr_array = p_ingr_array
	for ingr in ingr_array:
		for prop in ingr.properties:
			properties[prop] += 1
		if color == null:
			color = ingr.color
		else:
			color = Mixbox.lerp(color, ingr.color, 0.5)
