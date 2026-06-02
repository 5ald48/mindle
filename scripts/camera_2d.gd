extends Camera2D

var target_y = position.y

func _input(event):
	# ماوس
	if event is InputEventMouseButton:
		if event.button_index == MOUSE_BUTTON_WHEEL_UP:
			target_y -= 3
		if event.button_index == MOUSE_BUTTON_WHEEL_DOWN:
			target_y += 3
	# تاتش
	if event is InputEventScreenDrag:
		target_y -= event.relative.y

func _process(delta):
	# كنترولر
	if Input.is_action_pressed("ui_up"):
		target_y -= 5
	if Input.is_action_pressed("ui_down"):
		target_y += 5
	
	# حدود

	
	position.y = lerp(position.y, target_y, 0.1)
