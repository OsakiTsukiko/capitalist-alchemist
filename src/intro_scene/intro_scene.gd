extends Control


func _on_btn_begin_pressed():
	SoundManager.play_sound("interface click")
	get_tree().change_scene_to_packed(load("res://src/game_scene/game_scene.tscn"))
