extends TextureButton



func _process(delta: float) -> void:
	if Gamedata.iron_miner_on_off == true:
		Gamedata.iron += Gamedata.iron_per_sec * delta





func _on_pressed() -> void:
	if Gamedata.pickaxe_level >= 1:
		Gamedata.iron += 1
