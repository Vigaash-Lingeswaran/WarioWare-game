extends Node2D

@onready var themed_timer: Node2D = $BACKGROUND/MinigameTimer


var coin_collected = 0
var timer_end = false

func _ready() ->void:
	
	await themed_timer.Timer(10.0)
	timer_end = true

func _process(delta: float) -> void:
	if coin_collected ==3:
		if Global.minigames_done >5:
			get_tree().change_scene_to_file ("res://winner_theme.tscn")
			
		else:
			get_tree().change_scene_to_file("res://Screen/next_level.tscn")

func coin_collect()-> void:
	coin_collected = coin_collected +1
	return
