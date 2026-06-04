extends TextureButton



func _process(delta: float) -> void:
	if Gamedata.iron_miner_on_off == true:
		Gamedata.iron.plus_equals(Gamedata.iron_per_sec.multiply(delta))





func _on_pressed() -> void:
	if Gamedata.pickaxe_level >= 1:
		Gamedata.iron.plus_equals(Gamedata.pickaxe_click_multiplier)
