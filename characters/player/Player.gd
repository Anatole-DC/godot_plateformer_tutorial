extends KinematicBody2D

export var WALK_SPEED = 50		# Player walk speed
export var GRAVITY = 50			# Player gravity strength
export var JUMP_FORCE = -1000	# Player jump force

var velocity = Vector2(0, 0)	# Player velocity

func _physics_process(delta):

	# Right movement
	if Input.is_action_pressed("right"):
		velocity.x = WALK_SPEED

	# Left movement
	elif Input.is_action_pressed("left"):
		velocity.x = -WALK_SPEED

	# Jump movement
	if Input.is_action_just_pressed("jump") and is_on_floor():
		velocity.y = JUMP_FORCE

	# Player fall
	velocity.y += GRAVITY

	# Update the player position
	velocity = move_and_slide(velocity, Vector2.UP)
	velocity.x = lerp(velocity.x, 0, 0.3)		# Stops the object with a smooth movement