extends PanelContainer

@onready var label = $MarginContainer/Label

func set_text(txt):
	label.text = txt
