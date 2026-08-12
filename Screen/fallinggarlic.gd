extends Area2D


@export var speed: float = 200.0

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	position.y += speed *delta
	if position.y > 750:
		queue_free()
		
func caught() -> void:
	queue_free()
