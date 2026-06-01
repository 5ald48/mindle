extends TextureButton



func _process(delta: float) -> void:
	if Gamedata.copper_miner_unlocked == true:
		Gamedata.copper += Gamedata.iron_per_sec * delta



func _on_pressed() -> void:
	if Gamedata.pickaxe_level >= 3:
		Gamedata.copper += 1
