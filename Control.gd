extends Control

var idk = load("res://src/game_scene/game_scene.tscn")

func _ready():
	$CenterContainer/VBoxContainer/Label.text = "OUT OF TIME\nSCORE: " + str(Utils.score)
	


func _on_button_pressed():
	get_tree().change_scene_to_packed(idk)
