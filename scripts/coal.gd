extends TextureButton



func _process(delta: float) -> void:
	if Gamedata.coal_miner_unlocked == true:
		Gamedata.coal += Gamedata.iron_per_sec * delta



func _on_pressed() -> void:
	if Gamedata.pickaxe_level >= 2:
		Gamedata.coal += 1
