extends Node

@onready var themed_timer: Node2D = $MinigameTimer


var score: int = 0
@onready var scores: Label = $Score
 


func _on_player_area_entered(area: Area2D) -> void:
	if area.name.begins_with("Garlic") or area.has_method("_process"):
		score +=1;		
		area.queue_free()
		
var timer_end = false

func _ready() -> void:
	await themed_timer.Timer(10.0)
	timer_end = true
	
func _process(delta: float) -> void:
	scores.text = str(score)
	if score ==10:
		if Global.minigames_done>2:
			get_tree().change_scene_to_file("res://Screen/winner_theme.tscn")
		
		else:
			get_tree().change_scene_to_file("res://Screen/next_level.tscn")
			
	if timer_end:
		Global.lives-= 1
		Global.minigames_done -=1
		get_tree().change_scene_to_file("res://Screen/next_level.tscn")
