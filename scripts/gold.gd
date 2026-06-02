extends TextureButton



func _process(delta: float) -> void:
	if Gamedata.gold_miner_on_off == true:
		Gamedata.gold += Gamedata.iron_per_sec * delta



func _on_pressed() -> void:
	if Gamedata.pickaxe_level >= 4:
		Gamedata.gold += 1
