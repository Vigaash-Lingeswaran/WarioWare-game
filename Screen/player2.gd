extends Area2D

@export var speed: float = 500.0
var screen_size: Vector2

func _ready() -> void:
	screen_size = get_viewport_rect().size
	# Start the player near the bottom center of the screen
	position = Vector2(screen_size.x / 2, screen_size.y -170)

func _process(delta: float) -> void:
	var velocity = Vector2.ZERO
	
	# Check for horizontal keyboard input
	if Input.is_action_pressed("ui_left"):
		velocity.x -= 1
	if Input.is_action_pressed("ui_right"):
		velocity.x += 1
		
	# Move and clamp the player inside the visible screen boundaries
	position += velocity.normalized() * speed * delta
