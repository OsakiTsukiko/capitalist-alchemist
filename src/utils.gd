extends Node

var ingredient_list: Array[Ingredient]
var potion_naming: Dictionary = {
	"liquid" : ["potion", "tincture", "concoction", "elixir"],
	"semisolid" : ["cream", "goop", "ointment", "rub"],
	"solid" : ["powder", "dust", "sprinkle"],
	"effect": ["curatio", "fulgur", "ignis", "gelum", "caritas", "aduro", "caries", "letum", "potio", "expello", "venum", "saltus", "tripudio", "tristis", "lumen", "excessum", "anima", "neco", "nefas", "nemo", "nihilum", "gaudium", "amatorios", "silva", "villam", "bellum", "furor", "sanguis", "devoveo", "amare", "adamo", "damnum", "remedium", "gehenna", "infernum", "intellectus", "aqua", "caelum", "vespertilio", "osseus", "famulatus", "terra", "charisma", "agilitas", "virtus", "silentium", "virentia", "tempus"]
}

func create_ingredients():
	
	ingredient_list.append_array(
	[
		Ingredient.new("A", Color.RED, [Ingredient.INGREDIENT_PROPERTIES.S_METALIC, Ingredient.INGREDIENT_PROPERTIES.T_BITTER]),
		Ingredient.new("B", Color.BLUE, [Ingredient.INGREDIENT_PROPERTIES.S_METALIC, Ingredient.INGREDIENT_PROPERTIES.T_BITTER]),
		Ingredient.new("C", Color.GREEN, [Ingredient.INGREDIENT_PROPERTIES.S_METALIC, Ingredient.INGREDIENT_PROPERTIES.T_BITTER]),
		Ingredient.new("D", Color.YELLOW, [Ingredient.INGREDIENT_PROPERTIES.S_METALIC, Ingredient.INGREDIENT_PROPERTIES.T_BITTER]),
		Ingredient.new("E", Color.ORANGE, [Ingredient.INGREDIENT_PROPERTIES.S_METALIC, Ingredient.INGREDIENT_PROPERTIES.T_BITTER]),
		Ingredient.new("F", Color.GRAY, [Ingredient.INGREDIENT_PROPERTIES.S_METALIC, Ingredient.INGREDIENT_PROPERTIES.T_BITTER]),
		Ingredient.new("G", Color.BLACK, [Ingredient.INGREDIENT_PROPERTIES.S_METALIC, Ingredient.INGREDIENT_PROPERTIES.T_BITTER]),
		Ingredient.new("H", Color.WHITE, [Ingredient.INGREDIENT_PROPERTIES.S_METALIC, Ingredient.INGREDIENT_PROPERTIES.T_BITTER]),
		Ingredient.new("I", Color.PURPLE, [Ingredient.INGREDIENT_PROPERTIES.S_METALIC, Ingredient.INGREDIENT_PROPERTIES.T_BITTER]),
		Ingredient.new("J", Color.AQUAMARINE, [Ingredient.INGREDIENT_PROPERTIES.S_METALIC, Ingredient.INGREDIENT_PROPERTIES.T_BITTER]),
		Ingredient.new("K", Color.INDIGO, [Ingredient.INGREDIENT_PROPERTIES.S_METALIC, Ingredient.INGREDIENT_PROPERTIES.T_BITTER]),
		Ingredient.new("L", Color.BURLYWOOD, [Ingredient.INGREDIENT_PROPERTIES.S_METALIC, Ingredient.INGREDIENT_PROPERTIES.T_BITTER]),
		Ingredient.new("M", Color.CHOCOLATE, [Ingredient.INGREDIENT_PROPERTIES.S_METALIC, Ingredient.INGREDIENT_PROPERTIES.T_BITTER]),
		Ingredient.new("N", Color.PINK, [Ingredient.INGREDIENT_PROPERTIES.S_METALIC, Ingredient.INGREDIENT_PROPERTIES.T_BITTER]),
		Ingredient.new("O", Color.GOLD, [Ingredient.INGREDIENT_PROPERTIES.S_METALIC, Ingredient.INGREDIENT_PROPERTIES.T_BITTER])
	]
	)

func _ready():
	create_ingredients()
