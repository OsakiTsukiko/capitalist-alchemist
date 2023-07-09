class_name Potion
extends Node

var potion_name: String
var color: Color
var ingr_array: Array[Ingredient]
var prop_array: Array[int]

func empt():
	while (!ingr_array.is_empty()):
		ingr_array.pop_front()
	prop_array.fill(0)

func _init(p_ingr_array: Array[Ingredient]):
	prop_array.resize(10)
	prop_array.fill(0)
	ingr_array = p_ingr_array
	var color_arr: Array[Color] = [];
	for ingr in ingr_array:
		for prop in ingr.prop_arr:
			prop_array[prop] += 1
		color_arr.push_back(ingr.color)
	color = Utils.mixer(color_arr)
	
	potion_name = ""
	var rand_binary: int = randi() % 2
	match rand_binary:
		0:
			match prop_array[0]:
				0:
					potion_name = Utils.potion_naming.solid[randi() % (Utils.potion_naming.solid.size())].capitalize() + " of " + Utils.potion_naming.effect[randi() % Utils.potion_naming.effect.size()]
					
				1:
					potion_name = Utils.potion_naming.semisolid[randi() % (Utils.potion_naming.semisolid.size())].capitalize() + " of " + Utils.potion_naming.effect[randi() % Utils.potion_naming.effect.size()]
				2:
					potion_name = Utils.potion_naming.liquid[randi() % (Utils.potion_naming.liquid.size())].capitalize() + " of " + Utils.potion_naming.effect[randi() % Utils.potion_naming.effect.size()]
		1:
			match prop_array[0]:
				0:
					potion_name = Utils.potion_naming.effect[randi() % Utils.potion_naming.effect.size()].capitalize() + " " + Utils.potion_naming.solid[randi() % (Utils.potion_naming.solid.size())]
					
				1:
					potion_name = Utils.potion_naming.effect[randi() % Utils.potion_naming.effect.size()].capitalize() + " " + Utils.potion_naming.semisolid[randi() % (Utils.potion_naming.semisolid.size())]
				2:
					potion_name = Utils.potion_naming.effect[randi() % Utils.potion_naming.effect.size()].capitalize() + " " + Utils.potion_naming.liquid[randi() % (Utils.potion_naming.liquid.size())]
	
static func randomize_potion() -> Potion:
	
	var rand_prop_arr: Array[int]
	var rand_ingr_arr: Array[Ingredient]
	rand_prop_arr.resize(10)
	rand_prop_arr.fill(0)
	
	for i in range(4):
		
		var rand_ingr = Utils.ingredient_list[randi() % 15]
		rand_prop_arr[rand_ingr.prop_arr[0]] += 1
		rand_prop_arr[rand_ingr.prop_arr[1]] += 1
		while rand_prop_arr[0] > 2 || rand_prop_arr[rand_ingr.prop_arr[0]] > 3 || rand_prop_arr[rand_ingr.prop_arr[1]] > 3:
			rand_prop_arr[rand_ingr.prop_arr[0]] -= 1
			rand_prop_arr[rand_ingr.prop_arr[1]] -= 1
			rand_ingr = Utils.ingredient_list[randi() % 15]
			rand_prop_arr[rand_ingr.prop_arr[0]] += 1
			rand_prop_arr[rand_ingr.prop_arr[1]] += 1
		rand_ingr_arr.append(rand_ingr)
	
	var potion: Potion = Potion.new(rand_ingr_arr)
	for i in potion.ingr_array:
		print(i.id)
	return potion
