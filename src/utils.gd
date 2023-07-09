extends Node

var ingredient_list: Array[Ingredient]
var potion_naming: Dictionary = {
	"liquid" : ["potion", "tincture", "elixir"],
	"semisolid" : ["cream", "goop", "ointment", "rub"],
	"solid" : ["powder", "dust", "sprinkle"],
	"effect": ["curatio", "fulgur", "ignis", "gelum", "caritas", "aduro", "caries", "letum", "potio", "expello", "venum", "saltus", "tripudio", "tristis", "lumen", "excessum", "anima", "neco", "nefas", "nemo", "nihilum", "gaudium", "amatorios", "silva", "villam", "bellum", "furor", "sanguis", "devoveo", "amare", "adamo", "damnum", "remedium", "gehenna", "infernum", "intellectus", "aqua", "caelum", "vespertilio", "osseus", "famulatus", "terra", "charisma", "agilitas", "virtus", "silentium", "virentia", "tempus"]
}

func create_ingredients():
	
	ingredient_list.append_array(
	[
		Ingredient.new("water", Color(52.0, 62.0, 188.0) / 255, [Ingredient.INGREDIENT_PROPERTIES.MOISTURE, Ingredient.INGREDIENT_PROPERTIES.T_MILDNESS], 0),
		Ingredient.new("holy_water", Color(97.0, 225.0, 244.0) / 255, [Ingredient.INGREDIENT_PROPERTIES.MOISTURE, Ingredient.INGREDIENT_PROPERTIES.MAGIC], 1),
		Ingredient.new("moonflower_seed_oil", Color(139.0, 179.0, 85.0) / 255, [Ingredient.INGREDIENT_PROPERTIES.MOISTURE, Ingredient.INGREDIENT_PROPERTIES.S_VEGETAL], 2),
		Ingredient.new("virgin_blood", Color(83.0, 20.0, 19.0) / 255, [Ingredient.INGREDIENT_PROPERTIES.T_BITTER, Ingredient.INGREDIENT_PROPERTIES.S_METALIC], 3),
		Ingredient.new("cannonball_fruit", Color(58.0, 57.0, 57.0) / 255, [Ingredient.INGREDIENT_PROPERTIES.T_SWEET, Ingredient.INGREDIENT_PROPERTIES.T_SOUR], 4),
		Ingredient.new("sweet_grass", Color(77.0, 108.0, 36.0) / 255, [Ingredient.INGREDIENT_PROPERTIES.T_SWEET, Ingredient.INGREDIENT_PROPERTIES.S_VEGETAL], 5),
		Ingredient.new("orc_urine", Color(250.0, 244.0, 112.0) / 255, [Ingredient.INGREDIENT_PROPERTIES.MOISTURE, Ingredient.INGREDIENT_PROPERTIES.T_SALTY], 6),
		Ingredient.new("salted_rat_brains", Color(214.0, 175.0, 196.0) / 255, [Ingredient.INGREDIENT_PROPERTIES.T_SALTY, Ingredient.INGREDIENT_PROPERTIES.S_PUTRID], 7),
		Ingredient.new("cyclops_bile", Color(78.0, 48.0, 88.0) / 255, [Ingredient.INGREDIENT_PROPERTIES.MOISTURE, Ingredient.INGREDIENT_PROPERTIES.S_PUTRID], 8),
		Ingredient.new("black_iron_powder", Color(50.0, 50.0, 50.0) / 255, [Ingredient.INGREDIENT_PROPERTIES.T_BITTER, Ingredient.INGREDIENT_PROPERTIES.S_METALIC], 9),
		Ingredient.new("evil_plum", Color(96.0, 39.0, 36.0) / 255, [Ingredient.INGREDIENT_PROPERTIES.T_SOUR, Ingredient.INGREDIENT_PROPERTIES.S_PUTRID], 10),
		Ingredient.new("raw_liver", Color(79.0, 38.0, 36.0) / 255, [Ingredient.INGREDIENT_PROPERTIES.T_SWEET, Ingredient.INGREDIENT_PROPERTIES.T_BITTER], 11),
		Ingredient.new("mandrake", Color(247.0, 234.0, 192.0) / 255, [Ingredient.INGREDIENT_PROPERTIES.T_SALTY, Ingredient.INGREDIENT_PROPERTIES.S_VEGETAL], 12),
		Ingredient.new("abigail", Color(253.0, 238.0, 234.0) / 255, [Ingredient.INGREDIENT_PROPERTIES.T_MILDNESS, Ingredient.INGREDIENT_PROPERTIES.MAGIC], 13),
		Ingredient.new("rusted_mushrooms", Color(103.0, 48.0, 23.0) / 255, [Ingredient.INGREDIENT_PROPERTIES.T_SOUR, Ingredient.INGREDIENT_PROPERTIES.S_METALIC], 14)
	]
	)

func _ready():
	create_ingredients()

func compare_potions(ingr_array_potion_1: Array[Ingredient], ingr_array_potion_2: Array[Ingredient]):
	if ingr_array_potion_1.size() != ingr_array_potion_2.size():
		return false
	else:
		for i in range(ingr_array_potion_1.size()):
			if ingr_array_potion_1.count(ingr_array_potion_1[i]) != ingr_array_potion_2.count(ingr_array_potion_1[i]):
				return false
	
	return true
