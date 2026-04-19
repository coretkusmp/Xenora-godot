extends CanvasLayer

var wooden_wall
func _ready() -> void:
	wooden_wall = $HBoxContainer/GridContainer/Wooden_wall

func _physics_process(_delta: float) -> void:

	if item_001_selected_yet:
		wooden_wall.add_theme_color_override("font_color", Color.YELLOW)
	else:
		wooden_wall.add_theme_color_override("font_color", Color.WHITE)

var select_item_yet = false
var item_001_selected_yet = false

func _on_wooden_wall_pressed() -> void:

	if select_item_yet == true and item_001_selected_yet == true:
		item_001_selected_yet = false
		print('select item: false, item 001 selected: false')

	elif select_item_yet == true and item_001_selected_yet == false:
		item_001_selected_yet = true
		print('select item: true, item 001 selected: true')
		
	elif select_item_yet == false and item_001_selected_yet == false:
		item_001_selected_yet = true
		print('select item: true, item 001 selected: true')

	select_item_yet = !select_item_yet
