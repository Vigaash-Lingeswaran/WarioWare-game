extends Node2D

@export var obstacle_scene: PackedScene = preload("res://pipe_pair.tscn")
@onready var spawn_timer: Timer = $SpawnTimer

func _ready() -> void:
	spawn_timer.timeout.connect(_on_spawn_timer_timeout)

func _on_spawn_timer_timeout() -> void:
	var obstacle = obstacle_scene.instantiate()
	var random_y = randf_range(150.0, 350.0)
	obstacle.position = Vector2(600, random_y)
	get_node("ObstacleContainer").add_child(obstacle)
