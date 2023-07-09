extends Control


@onready var main_buttons = $MarginContainer/VBoxContainer/ButtonCenterContainer/MainButtons
@onready var option_buttons = $MarginContainer/VBoxContainer/ButtonCenterContainer/OptionButtons


func _on_btn_quit_pressed():
	get_tree().quit()


func _on_btn_options_pressed():
	main_buttons.hide()
	option_buttons.show()
	SoundManager.play_sound("interface click")


func _on_btn_start_pressed():
	SoundManager.play_sound("interface click")


func _on_btn_option_back_pressed():
	SoundManager.play_sound("interface click")
	main_buttons.show()
	option_buttons.hide()


func _on_sfx_chk_box_toggled(button_pressed):
	SoundManager.play_sound("interface click")
	SoundManager.toggle_sfx(button_pressed)


func _on_music_chk_box_toggled(button_pressed):
	SoundManager.toggle_music(button_pressed)
	SoundManager.play_sound("interface click")
