extends Camera3D

@export var speed := 44.0

func _physics_process(delta: float) -> void:
	var weight = clamp(delta * speed, 0.0, 1.0)
	
	global_transform = global_transform.interpolate_with(
		get_parent().global_transform,
		weight
	)
	
	global_position = get_parent().global_position

func _input(_event):
	if Input.is_action_just_pressed("toggle_fullscreen"):
		var current_window_mode = DisplayServer.window_get_mode()
		if current_window_mode != DisplayServer.WINDOW_MODE_FULLSCREEN:
			DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_FULLSCREEN)
		else:
			DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_WINDOWED)
