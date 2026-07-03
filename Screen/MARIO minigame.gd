extends Node2D

@onready var themed_timer: Node2D = $BACKGROUND/MinigameTimer


var coin_collected = 0
var timer_end = false

func _ready() ->void:
	
	await themed_timer.Timer(15.0)
	timer_end = true

func coin_collect()-> void:
	coin_collected = coin_collected +1
	return
	
func _process(delta: float) -> void:
	if coin_collected ==3:
		if Global.minigames_done >1:
			get_tree().change_scene_to_file ("res://Screen/winner_theme.tscn")
			
		else:
			get_tree().change_scene_to_file("res://Screen/next_level.tscn")
			
	if timer_end:
		Global.lives-= 1
		get_tree().change_scene_to_file("res://Screen/next_level.tscn")
