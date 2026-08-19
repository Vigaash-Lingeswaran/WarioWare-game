extends CharacterBody2D

const GRAVITY = 700.0
const JUMP_VELOCITY = -270.0
const MAX_FALL_SPEED = 500.0
var is_dead = false

func _physics_process(delta):
	if not is_on_floor():
		velocity.y += GRAVITY * delta
		if velocity.y > MAX_FALL_SPEED:
			velocity.y = MAX_FALL_SPEED

	if Input.is_action_just_pressed("ui_accept"):
		velocity.y = JUMP_VELOCITY
		rotate_garlic_up()

	move_and_slide()
	apply_rotation(delta)
	
	if global_position.y > 720 or global_position.y < 0:
		die()

func rotate_garlic_up():
	rotation = deg_to_rad(-30)

func apply_rotation(delta):
	if velocity.y > 0:
		rotation += 2.0 * delta
		rotation = min(rotation, deg_to_rad(60))

func die():
	if is_dead: return
	is_dead = true
	Global.lives-= 1
	Global.minigames_done -=1
	get_tree().change_scene_to_file("res://Screen/next_level.tscn")
