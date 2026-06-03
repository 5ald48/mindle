extends TextureButton



func _process(delta: float) -> void:
	if Gamedata.coal_miner_on_off == true:
		Gamedata.coal.plus_equals(Gamedata.coal_per_sec.multiply(delta))

func _on_pressed() -> void:
	if Gamedata.pickaxe_level >= 2:
		Gamedata.coal.plus_equals(1)
