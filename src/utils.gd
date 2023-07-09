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
		Ingredient.new("A", Color.RED, [Ingredient.INGREDIENT_PROPERTIES.MOISTURE, Ingredient.INGREDIENT_PROPERTIES.T_MILDNESS], 0),
		Ingredient.new("B", Color.BLUE, [Ingredient.INGREDIENT_PROPERTIES.MOISTURE, Ingredient.INGREDIENT_PROPERTIES.MAGIC], 1),
		Ingredient.new("C", Color.GREEN, [Ingredient.INGREDIENT_PROPERTIES.MOISTURE, Ingredient.INGREDIENT_PROPERTIES.S_VEGETAL], 2),
		Ingredient.new("D", Color.YELLOW, [Ingredient.INGREDIENT_PROPERTIES.T_BITTER, Ingredient.INGREDIENT_PROPERTIES.S_METALIC], 3),
		Ingredient.new("E", Color.ORANGE, [Ingredient.INGREDIENT_PROPERTIES.T_SWEET, Ingredient.INGREDIENT_PROPERTIES.T_SOUR], 4),
		Ingredient.new("F", Color.GRAY, [Ingredient.INGREDIENT_PROPERTIES.T_SWEET, Ingredient.INGREDIENT_PROPERTIES.S_VEGETAL], 5),
		Ingredient.new("G", Color.BLACK, [Ingredient.INGREDIENT_PROPERTIES.MOISTURE, Ingredient.INGREDIENT_PROPERTIES.T_SALTY], 6),
		Ingredient.new("H", Color.WHITE, [Ingredient.INGREDIENT_PROPERTIES.T_SALTY, Ingredient.INGREDIENT_PROPERTIES.S_PUTRID], 7),
		Ingredient.new("I", Color.PURPLE, [Ingredient.INGREDIENT_PROPERTIES.MOISTURE, Ingredient.INGREDIENT_PROPERTIES.S_PUTRID], 8),
		Ingredient.new("J", Color.AQUAMARINE, [Ingredient.INGREDIENT_PROPERTIES.T_BITTER, Ingredient.INGREDIENT_PROPERTIES.S_METALIC], 9),
		Ingredient.new("K", Color.INDIGO, [Ingredient.INGREDIENT_PROPERTIES.T_SOUR, Ingredient.INGREDIENT_PROPERTIES.S_PUTRID], 10),
		Ingredient.new("L", Color.BURLYWOOD, [Ingredient.INGREDIENT_PROPERTIES.T_SWEET, Ingredient.INGREDIENT_PROPERTIES.T_BITTER], 11),
		Ingredient.new("M", Color.CHOCOLATE, [Ingredient.INGREDIENT_PROPERTIES.T_SALTY, Ingredient.INGREDIENT_PROPERTIES.S_VEGETAL], 12),
		Ingredient.new("N", Color.PINK, [Ingredient.INGREDIENT_PROPERTIES.T_MILDNESS, Ingredient.INGREDIENT_PROPERTIES.MAGIC], 13),
		Ingredient.new("O", Color.GOLD, [Ingredient.INGREDIENT_PROPERTIES.T_SOUR, Ingredient.INGREDIENT_PROPERTIES.S_METALIC], 14)
	]
	)

func _ready():
	create_ingredients()

