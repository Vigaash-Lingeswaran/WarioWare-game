extends Area2D

const SPEED = 200.0

func _process(delta: float) -> void:
	position.x -= SPEED * delta
	
	if position.x < -100:
		queue_free()

# Connect the body_entered signal of the main Area2D to this function
func _on_body_entered(body: Node2D) -> void:
	if body.name == "Flappy Player":
		get_tree().reload_current_scene()
