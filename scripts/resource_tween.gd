extends Node2D

var current_tween: Tween
var btn_miner_upgrade : Node
var btn_max_upgrade : Node
var btn_resource : Node


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	btn_miner_upgrade = $"../Sprite2D2/miner upgrade"
	btn_max_upgrade = $"../Sprite2D2/max_upgrade"
	btn_resource = $"../Sprite2D2/resource"


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
