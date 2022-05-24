extends KinematicBody2D

export var WALK_SPEED = 50		# Player walk speed
export var GRAVITY = 50			# Player gravity strength
export var JUMP_FORCE = -1000

var velocity = Vector2(0, 0)

func _physics_process(delta):

	# Right movement
	if Input.is_action_pressed("right"):
		velocity.x = WALK_SPEED
		$Position2D.scale.x = 1
		# $Sprite.flip_h = false
		$Position2D/Sprite.play("walk")

	# Left movement
	elif Input.is_action_pressed("left"):
		velocity.x = -WALK_SPEED
		$Position2D.scale.x = -1
		# $Sprite.flip_h = true
		$Position2D/Sprite.play("walk")

	else:
		if is_on_floor():
			$Position2D/Sprite.play("idle")

	if not is_on_floor():
		$Position2D/Sprite.play("jump")

	# Jump movement
	if Input.is_action_just_pressed("jump") and is_on_floor():
		velocity.y = JUMP_FORCE

	# Player fall
	velocity.y += GRAVITY

	# Update the player position
	velocity = move_and_slide(velocity, Vector2.UP)
	velocity.x = lerp(velocity.x, 0, 0.3)		# Stops the object with a smooth movement
