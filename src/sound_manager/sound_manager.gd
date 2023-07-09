extends Node

@onready var bus_layout = load("res://src/sound_manager/default_bus_layout.tres")

@onready var interface_click_player = $InterfaceClickStreamPlayer
@onready var brew_potion_player = $BrewPotionStreamPlayer
@onready var buy_potion_player = $BuyPotionStreamPlayer
@onready var door_player = $DoorStreamPlayer
@onready var quill_player = $QuillStreamPlayer


func _ready():
	AudioServer.set_bus_layout(bus_layout)

func toggle_sfx(toggle_mode: bool):
	AudioServer.set_bus_mute(1, !toggle_mode)

func toggle_music(toggle_mode: bool):
	AudioServer.set_bus_mute(2, !toggle_mode)

func play_sound(sound_name: String):
	match sound_name:
		"interface click":
			interface_click_player.play()
		"brew":
			brew_potion_player.play()
		"buy_potion":
			buy_potion_player.play()
		"door":
			door_player.play()
		"quill":
			quill_player.play()
