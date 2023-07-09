extends PanelContainer

@onready var ing_n: TextureButton = $Ing

var img: Texture
var desc: String
var ing: Ingredient

func init(p_img: Texture, p_desc: String, p_ing: Ingredient):
	img = p_img
	desc = "~ " + p_ing.id.capitalize() + " ~\n" + p_desc
	ing = p_ing

func _ready():
	ing_n.texture_normal = img

func _on_ing_mouse_entered():
	if (get_tree().get_nodes_in_group("cabinet")[0].has_method("ind_ent_area")):
		get_tree().get_nodes_in_group("cabinet")[0].ind_ent_area(desc)

func _on_ing_mouse_exited():
	if (get_tree().get_nodes_in_group("cabinet")[0].has_method("ind_ext_area")):
		get_tree().get_nodes_in_group("cabinet")[0].ind_ext_area()


func _on_ing_pressed():
	if(get_tree().get_nodes_in_group("cabinet")[0].has_method("select_ing")):
		get_tree().get_nodes_in_group("cabinet")[0].select_ing(ing)
