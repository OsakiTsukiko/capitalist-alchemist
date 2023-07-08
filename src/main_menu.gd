extends Control

@onready var main_buttons = $MarginContainer/VBoxContainer/ButtonCenterContainer/MainButtons
@onready var option_buttons = $MarginContainer/VBoxContainer/ButtonCenterContainer/OptionButtons


func _on_btn_quit_pressed() -> void:
	get_tree().quit()


func _on_btn_options_pressed():
	main_buttons.hide()
	option_buttons.show()


func _on_btn_start_pressed():
	pass # Replace with function body.


func _on_btn_option_back_pressed():
	main_buttons.show()
	option_buttons.hide()
