extends Node2D


func _on_start_game_pressed() -> void:
	get_tree().change_scene_to_file("res://Screen/next_level.tscn")
	Global.reset_state()



func _on_settings_pressed() -> void:
	get_tree().change_scene_to_file("res://Screen/settings.tscn")
	

func _on_quit_pressed() -> void:
	get_tree().quit()
