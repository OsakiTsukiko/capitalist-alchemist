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

func randomize_potion() -> Potion:
	
	var rand_prop_arr: Array[int]
	var rand_ingr_arr: Array[Ingredient]
	rand_prop_arr.resize(10)
	rand_prop_arr.fill(0)
	
	for i in range(4):
		
		var rand_ingr = ingredient_list[randi() % 15]
		rand_prop_arr[rand_ingr.properties[0]] += 1
		rand_prop_arr[rand_ingr.properties[1]] += 1
		while rand_prop_arr[0] > 2 || rand_prop_arr[rand_ingr.properties[0]] > 3 || rand_prop_arr[rand_ingr.properties[1]] > 3:
			rand_prop_arr[rand_ingr.properties[0]] -= 1
			rand_prop_arr[rand_ingr.properties[1]] -= 1
			rand_ingr = ingredient_list[randi() % 15]
			rand_prop_arr[rand_ingr.properties[0]] += 1
			rand_prop_arr[rand_ingr.properties[1]] += 1
		rand_ingr_arr.append(rand_ingr)
	
	var potion: Potion = Potion.new(rand_ingr_arr)
	
	return potion
