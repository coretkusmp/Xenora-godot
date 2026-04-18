extends Camera2D

func _physics_process(delta: float) -> void:
	if Input.is_action_just_pressed("zoom_in"):
		zoom *= 1.1

	if Input.is_action_just_pressed("zoom_out"):
		zoom /= 1.1
