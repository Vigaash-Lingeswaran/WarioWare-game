extends Node2D

@export var obstacle_scene: PackedScene = preload("res://Screen/pipe_pair.tscn")
@onready var spawn_timer: Timer = $SpawnTimer

@onready var scores: Label = $Score

func _ready() -> void:
	spawn_timer.timeout.connect(_on_spawn_timer_timeout)

func _on_spawn_timer_timeout() -> void:
	var obstacle = obstacle_scene.instantiate()
	var random_y = randf_range(150.0, 350.0)
	obstacle.position = Vector2(1000, random_y)
	get_node("ObstacleContainer").add_child(obstacle)
	
func _process(delta: float) -> void:
	scores.text = str(Global.flappyscore)
	
	if Global.flappyscore ==8:
		if Global.minigames_done>3:
			get_tree().change_scene_to_file("res://Screen/winner_theme.tscn")
		
		else:
			get_tree().change_scene_to_file("res://Screen/next_level.tscn")
