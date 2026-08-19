extends Area2D

const SPEED = 200.0
var score: int = 0
var scored_point: bool = false

func _process(delta: float) -> void:
	position.x -= SPEED * delta
	if not scored_point and position.x <200: 
			Global.flappyscore += 1
			scored_point = true
	
	if position.x < -100:
		queue_free()

func _on_body_entered(body: Node2D) -> void:
	if body.name == "Flappy Player":
		if body.has_method("die"):
			body.die()
		else:
			get_tree().reload_current_scene()
