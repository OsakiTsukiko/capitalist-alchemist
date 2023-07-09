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
		Ingredient.new(
			"water",
			preload("res://assets/img/ing/WATER.png"),
			"A staple in all alchemical creation. Dilutes taste and makes great potions.",
			Color(52.0, 62.0, 188.0) / 255, 
			[Ingredient.INGREDIENT_PROPERTIES.MOISTURE, Ingredient.INGREDIENT_PROPERTIES.T_MILDNESS], 
			0
		),
		
		Ingredient.new(
			"holy_water", 
			preload("res://assets/img/ing/HOLY_WATER.png"),
			"Blessed by an unqualified priest, somehow still has magical properties.",
			Color(97.0, 225.0, 244.0) / 255, 
			[Ingredient.INGREDIENT_PROPERTIES.MOISTURE, Ingredient.INGREDIENT_PROPERTIES.MAGIC], 
			1
		),
		
		Ingredient.new(
			"moonflower_seed_oil", 
			preload("res://assets/img/ing/MOONFLOWER_SEED_OIL.png"),
			"Great for cooking as well. A liquid that tastes of grass.",
			Color(139.0, 179.0, 85.0) / 255, 
			[Ingredient.INGREDIENT_PROPERTIES.MOISTURE, Ingredient.INGREDIENT_PROPERTIES.S_VEGETAL], 			2
		),
		
		Ingredient.new(
			"virgin_blood", 
			preload("res://assets/img/ing/VIRGIN_BLOOD.png"),
			"Turned slightly solid from no use, though the bitter, iron aftertaste still shines through",
			Color(83.0, 20.0, 19.0) / 255, 
			[Ingredient.INGREDIENT_PROPERTIES.T_BITTER, Ingredient.INGREDIENT_PROPERTIES.S_METALIC], 
			3
		),
		
		Ingredient.new(
			"cannonball_fruit", 
			preload("res://assets/img/ing/CANNONBALL_FRUIT.png"),
			"Grows heavy cannonballs. You can taste the sweet victory and the sour faces on your enemies already.",
			Color(58.0, 57.0, 57.0) / 255, 
			[Ingredient.INGREDIENT_PROPERTIES.T_SWEET, Ingredient.INGREDIENT_PROPERTIES.T_SOUR], 
			4
		),
		
		Ingredient.new(
			"sweet_grass", 
			preload("res://assets/img/ing/SWEET_GRASS.png"),
			"Taller and thicker than normal grass. Still smells like a plant.",
			Color(77.0, 108.0, 36.0) / 255, 
			[Ingredient.INGREDIENT_PROPERTIES.T_SWEET, Ingredient.INGREDIENT_PROPERTIES.S_VEGETAL], 
			5
		),
		
		Ingredient.new(
			"orc_urine", 
			preload("res://assets/img/ing/ORK_URINE.png"),
			"Don't ask how I got it. Tastes salty. Don't ask how I know.",
			Color(250.0, 244.0, 112.0) / 255, 
			[Ingredient.INGREDIENT_PROPERTIES.MOISTURE, Ingredient.INGREDIENT_PROPERTIES.T_SALTY], 
			6
		),
		
		Ingredient.new(
			"salted_rat_brains", 
			preload("res://assets/img/ing/SALTED_RAT_BRAINS.png"),
			"Absolutely disgusting smell.",
			Color(214.0, 175.0, 196.0) / 255, 
			[Ingredient.INGREDIENT_PROPERTIES.T_SALTY, Ingredient.INGREDIENT_PROPERTIES.S_PUTRID], 
			7
		),
		
		Ingredient.new(
			"cyclops_bile", 
			preload("res://assets/img/ing/CYCLOPES_BILE.png"),
			"Hard to acquire. The liquid smells rancid.",
			Color(78.0, 48.0, 88.0) / 255, 
			[Ingredient.INGREDIENT_PROPERTIES.MOISTURE, Ingredient.INGREDIENT_PROPERTIES.S_PUTRID], 
			8
		),
		
		Ingredient.new(
			"black_iron_powder", 
			preload("res://assets/img/ing/BLACK_IRON_POWDER.png"),
			"Tastes bitter, smells like metal. What a shocker.",
			Color(50.0, 50.0, 50.0) / 255, 
			[Ingredient.INGREDIENT_PROPERTIES.T_BITTER, Ingredient.INGREDIENT_PROPERTIES.S_METALIC], 
			9
		),
		
		Ingredient.new(
			"evil_plum", 
			preload("res://assets/img/ing/EVIL_PLUM.png"),
			"It hates you and your family. Smells rancid and tastes sour just because it hates everything.",
			Color(96.0, 39.0, 36.0) / 255, 
			[Ingredient.INGREDIENT_PROPERTIES.T_SOUR, Ingredient.INGREDIENT_PROPERTIES.S_PUTRID], 
			10
		),
		
		Ingredient.new(
			"raw_liver", 
			preload("res://assets/img/ing/RAW_LIVER.png"),
			"Tastes oddly sweet. The bitter, organy taste still shines through though.",
			Color(79.0, 38.0, 36.0) / 255, 
			[Ingredient.INGREDIENT_PROPERTIES.T_SWEET, Ingredient.INGREDIENT_PROPERTIES.T_BITTER], 
			11
		),
		
		Ingredient.new(
			"sleeping_mandrake", 
			preload("res://assets/img/ing/SLEEPING_MANDRAKE.png"),
			"Don't wake it up. Makes a good stew because of its salty root.",
			Color(247.0, 234.0, 192.0) / 255, 
			[Ingredient.INGREDIENT_PROPERTIES.T_SALTY, Ingredient.INGREDIENT_PROPERTIES.S_VEGETAL], 
			12
		),
		
		Ingredient.new(
			"abigail", 
			preload("res://assets/img/ing/ABIGAIL.png"),
			"What a dull little girl. Cursed by a witch.",
			Color(253.0, 238.0, 234.0) / 255, 
			[Ingredient.INGREDIENT_PROPERTIES.T_MILDNESS, Ingredient.INGREDIENT_PROPERTIES.MAGIC], 
			13
		),
		
		Ingredient.new(
			"rusted_mushrooms", 
			preload("res://assets/img/ing/RUSTED_MUSHROOMS.png"),
			"An exotic fungus from a faraway land crippled by the rust disease. The rust tastes sour.",
			Color(103.0, 48.0, 23.0) / 255, 
			[Ingredient.INGREDIENT_PROPERTIES.T_SOUR, Ingredient.INGREDIENT_PROPERTIES.S_METALIC], 
			14
		)
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
