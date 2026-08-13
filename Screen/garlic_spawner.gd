extends Node2D

# Preload the Garlic scene so we can duplicate it
@export var garlic_scene: PackedScene = preload("res://Screen/garlic.tscn")

func _on_timer_timeout() -> void:
	# Create a new instance of the garlic
	var garlic = garlic_scene.instantiate()
	
	# Choose a random horizontal starting position
	var screen_width = get_viewport_rect().size.x
	var random_x = randf_range(50, screen_width - 50)
	
	# Spawn just above the top of the screen
	garlic.position = Vector2(random_x, -50)
	
	# Add the garlic instance to the running scene tree
	add_child(garlic)
