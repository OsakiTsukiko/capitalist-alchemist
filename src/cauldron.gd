class_name Cauldron
extends Potion

func add_ingredient(p_ingr: Ingredient):
	ingr_array.append(p_ingr)
	prop_array[p_ingr.prop_arr[0]] += 1
	prop_array[p_ingr.prop_arr[1]] += 1
	color = Mixbox.lerp(color, p_ingr.color, 0.5)

func remove_ingredient(p_ingr: Ingredient):
	var p_ingr_index: int
	
	for i in range(ingr_array.size()):
		if ingr_array[i] == p_ingr:
			p_ingr_index = i
	
	prop_array[p_ingr.prop_arr[0]] -= 1
	prop_array[p_ingr.prop_arr[1]] -= 1
	ingr_array.pop_at(p_ingr_index)
	
	if ingr_array.is_empty():
		color = Color.TRANSPARENT
	else:
		var color_arr: Array[Color] = []
		for i in ingr_array:
			color_arr.push_back(i.color)
		color = Utils.mixer(color_arr)

func remove_ingredient_2(p_ingr: Ingredient):
	
	prop_array[p_ingr.prop_arr[0]] -= 1
	prop_array[p_ingr.prop_arr[1]] -= 1
	ingr_array.erase(p_ingr)
	
	if ingr_array.is_empty():
		color = Color.TRANSPARENT
	else:
		var color_arr: Array[Color] = []
		for i in ingr_array:
			color_arr.push_back(i.color)
		color = Utils.mixer(color_arr)
