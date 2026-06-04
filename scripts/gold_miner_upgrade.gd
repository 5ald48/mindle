extends TextureButton


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass

func _on_pressed() -> void:
	if Gamedata.gold.is_greater_than_or_equal_to(Gamedata.gold_miner_upgrade_cost):
		Gamedata.gold_miner_on_off = true
		Gamedata.gold_miner_unlocked = true
		Gamedata.gold.minus_equals(Gamedata.gold_miner_upgrade_cost)
		Gamedata.gold_miner_upgrade_cost.multiply_equals(Gamedata.gold_miner_upgrade_cost_multiplier)
		Gamedata.gold_per_sec.multiply_equals(Gamedata.gold_per_sec_multiplier)
