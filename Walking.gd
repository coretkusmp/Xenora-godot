extends CharacterBody2D

const speed = 600



func _physics_process(delta):
	var direction = Input.get_vector("move_left", "move_right", "move_up", "move_down")
	velocity = direction * speed
	move_and_slide()

	if direction != Vector2.ZERO:
		var target_rotation = direction.angle() + deg_to_rad(180)
		rotation = lerp_angle(rotation, target_rotation, 10 * delta)
