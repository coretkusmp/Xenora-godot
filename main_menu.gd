extends Node2D


func _on_playbutton_pressed() -> void:
	get_tree().change_scene_to_file("res://scene/planet.tscn")
	
	
	




func _on_settings_button_pressed() -> void:
	get_tree().change_scene_to_file("res://scene/settings.tscn")
