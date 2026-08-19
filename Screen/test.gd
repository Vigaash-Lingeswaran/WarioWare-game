extends CharacterBody2D

const GRAVITY = 900.0
const JUMP_VELOCITY = -350.0
const MAX_FALL_SPEED = 500.0

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

func rotate_garlic_up():
	rotation = deg_to_rad(-30)

func apply_rotation(delta):
	if velocity.y > 0:
		rotation += 2.0 * delta
		rotation = min(rotation, deg_to_rad(60))
extends CharacterBody2D

const GRAVITY = 900.0
const JUMP_VELOCITY = -350.0
const MAX_FALL_SPEED = 500.0

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

func rotate_garlic_up():
	rotation = deg_to_rad(-30)

func apply_rotation(delta):
	if velocity.y > 0:
		rotation += 2.0 * delta
		rotation = min(rotation, deg_to_rad(60))
extends CharacterBody2D

const GRAVITY = 900.0
const JUMP_VELOCITY = -350.0
const MAX_FALL_SPEED = 500.0

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

func rotate_garlic_up():
	rotation = deg_to_rad(-30)

func apply_rotation(delta):
	if velocity.y > 0:
		rotation += 2.0 * delta
		rotation = min(rotation, deg_to_rad(60))
extends CharacterBody2D

const GRAVITY = 900.0
const JUMP_VELOCITY = -350.0
const MAX_FALL_SPEED = 500.0

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

func rotate_garlic_up():
	rotation = deg_to_rad(-30)

func apply_rotation(delta):
	if velocity.y > 0:
		rotation += 2.0 * delta
		rotation = min(rotation, deg_to_rad(60))
extends CharacterBody2D

const GRAVITY = 900.0
const JUMP_VELOCITY = -350.0
const MAX_FALL_SPEED = 500.0

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

func rotate_garlic_up():
	rotation = deg_to_rad(-30)

func apply_rotation(delta):
	if velocity.y > 0:
		rotation += 2.0 * delta
		rotation = min(rotation, deg_to_rad(60))
extends CharacterBody2D

const GRAVITY = 900.0
const JUMP_VELOCITY = -350.0
const MAX_FALL_SPEED = 500.0

func _physics_process(delta):
	if not is_on_floor():
		velocity.y += GRAVITY * delta
		if velocity.y > MAX_FALL_SPEED:
			velocity.y = MAX_FALL_SPEED

	if Input.is_action_just_pressed("ui_accept"):
		velocity.y = JUMP
const GRAVITY = 900.0
const JUMP_VELOCITY = -350.0
const MAX_FALL_SPEED = 500.0

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

func rotate_garlic_up():
	rotation = deg_to_rad(-30)

func apply_rotation(delta):
	if velocity.y > 0:
		rotation += 2.0 * delta
		rotation = min(rotation, deg_to_rad(60))
extends CharacterBody2D

const GRAVITY = 900.0
const JUMP_VELOCITY = -350.0
const MAX_FALL_SPEED = 500.0

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

func rotate_garlic_up():
	rotation = deg_to_rad(-30)

func apply_rotation(delta):
	if velocity.y > 0:
		rotation += 2.0 * delta
		rotation = min(rotation, deg_to_rad(60))
extends CharacterBody2D

const GRAVITY = 900.0
const JUMP_VELOCITY = -350.0
const MAX_FALL_SPEED = 500.0

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

func rotate_garlic_up():
	rotation = deg_to_rad(-30)

func apply_rotation(delta):
	if velocity.y > 0:
		rotation += 2.0 * delta
		rotation = min(rotation, deg_to_rad(60))
extends CharacterBody2D

const GRAVITY = 900.0
const JUMP_VELOCITY = -350.0
const MAX_FALL_SPEED = 500.0

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

func rotate

func apply_rotation(delta):
	if velocity.y > 0:
		rotation += 2.0 * delta
		rotation = min(rotation, deg_to_rad(60))
