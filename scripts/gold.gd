extends TextureButton

func _process(delta: float) -> void:
	if Gamedata.gold_miner_on_off == true:
		Gamedata.gold.plus_equals(Gamedata.gold_per_sec.multiply(delta))

func _on_pressed() -> void:
	if Gamedata.pickaxe_level.is_greater_than_or_equal_to(4):
		Gamedata.gold.plus_equals(Gamedata.pickaxe_click_multiplier)
