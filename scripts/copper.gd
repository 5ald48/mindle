extends TextureButton



func _process(delta: float) -> void:
	if Gamedata.copper_miner_on_off == true:
		Gamedata.copper.plus_equals(Gamedata.copper_per_sec.multiply(delta))

func _on_pressed() -> void:
	if Gamedata.pickaxe_level >= 3:
		Gamedata.copper.plus_equals(1)
