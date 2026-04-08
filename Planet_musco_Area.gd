extends Node2D


var esc_yet = false
var research = false

func _on_exit_button_pressed() -> void:
	get_tree().change_scene_to_file("res://main_menu.tscn")


func _on_resume_button_pressed() -> void:
	esc_yet = false


func _on_research_button_pressed() -> void:
	research = true

	



func _physics_process(delta):
	if Input.is_action_just_pressed("esc"):
		esc_yet = !esc_yet
	
	var ex_bt = $exit_button
	var menu_ex_bg = $menu_exit_bg
	var research_bt = $research_button
	var resume_bt = $resume_button
	if esc_yet == false:
		ex_bt.hide()
		menu_ex_bg.hide()
		research_bt.hide()
		resume_bt.hide()
		
	else :
		ex_bt.show()
		menu_ex_bg.show()
		research_bt.show()
		resume_bt.show()



var select_item_yet = false
var item_001_selected_yet = false
func _on_wooden_wall_pressed() -> void:
	select_item_yet = !select_item_yet
	if select_item_yet == true and item_001_selected_yet == true:
		select_item_yet = false
		item_001_selected_yet = false
		print('select item: false, item 001 selected: false')
	elif select_item_yet == true and item_001_selected_yet == false:
		select_item_yet = true
		item_001_selected_yet = true
		print('select item: true, item 001 selected: true')
	elif select_item_yet == false and item_001_selected_yet == false:
		select_item_yet = true
		item_001_selected_yet = true
		print('select item: true, item 001 selected: true')