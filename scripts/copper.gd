extends TextureButton



func _process(delta: float) -> void:
	if Gamedata.copper_miner_on_off == true:
		Gamedata.copper.plus_equals(Gamedata.copper_per_sec.multiply(delta))

func _on_pressed() -> void:
	if Gamedata.pickaxe_level.is_greater_than_or_equal_to(3):
		Gamedata.copper.plus_equals(Gamedata.pickaxe_click_multiplier)
