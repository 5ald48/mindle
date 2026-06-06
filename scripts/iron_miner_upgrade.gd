extends TextureButton


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass


func _on_pressed() -> void:

	if Gamedata.iron.is_greater_than_or_equal_to(Gamedata.iron_miner_upgrade_cost):
		Gamedata.iron_miner_on_off = true
		Gamedata.iron_miner_unlocked = true
		Gamedata.iron.minus_equals(Gamedata.iron_miner_upgrade_cost)
		Gamedata.iron_miner_upgrade_cost.multiply_equals(Gamedata.iron_miner_upgrade_cost_multiplier)
		Gamedata.iron_per_sec.multiply_equals(Gamedata.iron_per_sec_multiplier)
