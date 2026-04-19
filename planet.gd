extends Node2D


func _on_area_a_01_pressed() -> void:
	get_tree().change_scene_to_file("res://scene/area_a_01.tscn")


func _on_return_btn_pressed() -> void:
	get_tree().change_scene_to_file("res://scene/main_menu.tscn")
