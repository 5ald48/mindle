extends TextureButton



func _process(delta: float) -> void:
	if Gamedata.coal_miner_on_off == true:
		Gamedata.coal.plus_equals(Gamedata.coal_per_sec.multiply(delta))

func _on_pressed() -> void:
	if Gamedata.pickaxe_level.is_greater_than_or_equal_to(2): 
		Gamedata.coal.plus_equals(Gamedata.pickaxe_click_multiplier)
