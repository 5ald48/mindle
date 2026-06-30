extends Camera2D

@export var min_y : float = -540
@export var max_y : float = 280

var target_y = position.y

func _input(event):
	if event is InputEventMouseButton:
		if event.button_index == MOUSE_BUTTON_WHEEL_UP:
			target_y -= 8
		if event.button_index == MOUSE_BUTTON_WHEEL_DOWN:
			target_y += 8
	if event is InputEventScreenDrag:
		target_y -= event.relative.y
	
	target_y = clamp(target_y, min_y, max_y)

func _process(delta):
	if Input.is_action_pressed("ui_up"):
		target_y -= 1
	if Input.is_action_pressed("ui_down"):
		target_y += 1
	
	target_y = clamp(target_y, min_y, max_y)
	
	position.y = lerp(position.y, target_y, 10.0 * delta)
