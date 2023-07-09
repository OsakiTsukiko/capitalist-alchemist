extends Control

var btn: Resource = load("res://src/game_scene/cab_btn.tscn")
@onready var ing_cont = $Panel/CenterContainer/VBoxContainer/PanelContainer/MarginContainer/GridContainer

@onready var indicator = $Indicator
var indicator_visible: bool = false

func _ready():
	for ing in Utils.ingredient_list:
		var b = btn.instantiate()
		b.init(
			ing.texture,
			ing.description,
			ing
		)
		ing_cont.add_child(b)

func _process(delta):
	if (indicator_visible):
		indicator.global_position = get_viewport().get_mouse_position()

func ind_ent_area(desc):
	indicator.set_text(desc)
	indicator_visible = true
	indicator.visible = indicator_visible


func ind_ext_area():
	indicator_visible = false
	indicator.visible = indicator_visible


func _on_button_pressed():
	# CLOSE BTN
	self.visible = false

func select_ing(ing: Ingredient):
	if(get_tree().get_nodes_in_group("game_scene")[0].has_method("select_ing")):
		get_tree().get_nodes_in_group("game_scene")[0].select_ing(ing)
	self.visible = false
