extends Area2D

@export var speed: float = 500.0
var score: int = 0

func _ready() -> void:
	area_entered.connect(_on_area_entered)
	
func _process(delta: float) -> void:
	var direction = Input.get_axis("ui_left", "ui_right")
	position.x += direction *speed *delta
	position.x = clamp (position.x, 50.0, 1100.0)
	
func _on_area_entered(area: Area2D) -> void:
	if area.has_method("caught"):
		area.caught()
		score +=1
		print("Score: ", score)
