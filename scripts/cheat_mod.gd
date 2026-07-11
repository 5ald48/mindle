extends Control


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$"../Panel".hide()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass
	if Input.is_action_just_pressed("cheat_mod"):
		$"../Panel".visible = not $"../Panel".visible
