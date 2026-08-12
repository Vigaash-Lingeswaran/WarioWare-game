extends Node2D

@export var item_scene: PackedScene = preload("res://falling_garlic.tscn")
@onready var spawn_timer: Timer = $"Spawn Timer"


func _ready() -> void:
	spawn_timer.timeout.connect(_on_spawn_timer_timeout)
	
func _on_spawn_timer_timeout() -> void:
		var item = item_scene.instantiate()
		
		var random_x = randf_range(100.0, 1100.0)
		item.position = Vector2(random_x, -50.0)
		
		get_parent().add_child(item)
