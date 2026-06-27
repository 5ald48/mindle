extends TextureButton



# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass


func _on_pressed() -> void:
	if Gamedata.coin.is_greater_than_or_equal_to(Gamedata.pristage_cost):
		Gamedata.pristage_coin.plus_equals(100)
		Gamedata.pristage_lvl.plus_equals(1)
		
		Gamedata.reset()
