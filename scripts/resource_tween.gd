extends Node2D

@onready var current_tween: Tween
@onready var btn_miner_upgrade : Node = $"../Sprite2D2/miner upgrade"
@onready var btn_max_upgrade : Node = $"../Sprite2D2/max_upgrade"
@onready var btn_resource : Node = $"../Sprite2D2/resource"
@onready var btn_unlock_button : Node = $"../unlock/unlock"
@onready var btn_on_off: TextureButton = $"../Sprite2D2/on off"


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	
	#miner upgrade
	if not btn_miner_upgrade.is_hovered():
		current_tween = create_tween()
		current_tween.tween_property(btn_miner_upgrade,"scale",Vector2(0.75 ,0.75),0.1)

#max upgrade
	if not btn_max_upgrade.is_hovered():
		current_tween = create_tween()
		current_tween.tween_property(btn_max_upgrade,"scale",Vector2(0.75 ,0.75),0.1)

#resource
	if not btn_resource.is_hovered():
		current_tween = create_tween()
		current_tween.tween_property(btn_resource,"scale",Vector2(0.5 ,0.5),0.1)

#lock button
	if not btn_unlock_button.is_hovered():
		current_tween = create_tween()
		current_tween.tween_property(btn_unlock_button,"scale",Vector2(0.75 ,0.75),0.1)

#on off button
	if not btn_on_off.is_hovered():
		current_tween = create_tween()
		current_tween.tween_property(btn_on_off,"scale",Vector2(0.75 ,0.75),0.1)



#miner upgrade hover start
func _on_miner_upgrade_mouse_entered() -> void:
	if current_tween: current_tween.kill()
	current_tween = create_tween()
	current_tween.tween_property(btn_miner_upgrade,"scale",Vector2(1.0 ,1.0),0.1)


func _on_miner_upgrade_pressed() -> void:
	if current_tween: current_tween.kill()
	current_tween = create_tween()
	current_tween.tween_property(btn_miner_upgrade,"scale",Vector2(0.9 ,0.6),0.1)
	current_tween.tween_property(btn_miner_upgrade,"scale",Vector2(1.0 ,1.0),0.1)




#miner max upgrade hover start
func _on_max_upgrade_mouse_entered() -> void:
	if current_tween: current_tween.kill()
	current_tween = create_tween()
	current_tween.tween_property(btn_max_upgrade,"scale",Vector2(1.0 ,1.0),0.1)


#miner max upgrade click
func _on_max_upgrade_pressed() -> void:
	if current_tween: current_tween.kill()
	current_tween = create_tween()
	current_tween.tween_property(btn_max_upgrade,"scale",Vector2(0.9 ,0.6),0.1)
	current_tween.tween_property(btn_max_upgrade,"scale",Vector2(1.0 ,1.0),0.1)







#resorce hover start
func _on_resource_mouse_entered() -> void:
	if current_tween: current_tween.kill()
	current_tween = create_tween()
	current_tween.tween_property(btn_resource,"scale",Vector2(1.0 ,1.0),0.1)


func _on_resource_pressed() -> void:
	if current_tween: current_tween.kill()
	current_tween = create_tween()
	current_tween.tween_property(btn_resource,"scale",Vector2(0.9 ,0.6),0.1)
	current_tween.tween_property(btn_resource,"scale",Vector2(1.0 ,1.0),0.1)







func _on_unlock_mouse_entered() -> void:
	if current_tween: current_tween.kill()
	current_tween = create_tween()
	current_tween.tween_property(btn_unlock_button,"scale",Vector2(1.0 ,1.0),0.1)


func _on_unlock_pressed() -> void:
	if current_tween: current_tween.kill()
	current_tween = create_tween()
	current_tween.tween_property(btn_unlock_button,"scale",Vector2(0.9 ,0.6),0.1)
	current_tween.tween_property(btn_unlock_button,"scale",Vector2(1.0 ,1.0),0.1)


func _on_on_off_mouse_entered() -> void:
	if current_tween: current_tween.kill()
	current_tween = create_tween()
	current_tween.tween_property(btn_on_off,"scale",Vector2(1.0 ,1.0),0.1)


func _on_on_off_pressed() -> void:
	if current_tween: current_tween.kill()
	current_tween = create_tween()
	current_tween.tween_property(btn_on_off,"scale",Vector2(0.9 ,0.6),0.1)
	current_tween.tween_property(btn_on_off,"scale",Vector2(1.0 ,1.0),0.1)
