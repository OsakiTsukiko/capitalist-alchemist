class_name Ingredient
extends Node

var id: String
var color: Color
var properties: Array[int]
var num: int

func _init(p_id: String, p_color: Color, p_properties: Array[int], p_num: int):
	id = p_id
	color = p_color
	properties = p_properties
	num = p_num


enum INGREDIENT_PROPERTIES {
	MOISTURE = 0,
	T_SWEET = 1,
	T_SOUR = 2,
	T_SALTY = 3,
	T_BITTER = 4,
	T_MILDNESS = 5,
	S_PUTRID = 6,
	S_VEGETAL = 7,
	S_METALIC = 8,
	MAGIC = 9
}

