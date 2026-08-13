extends Area2D

@export var speed: float = 300.0

func _process(delta: float) -> void:
	# Move the garlic downwards over time
	position.y += speed * delta
	
	# Delete the garlic if it falls past the bottom of a standard screen
	if position.y > 700:
		queue_free()
