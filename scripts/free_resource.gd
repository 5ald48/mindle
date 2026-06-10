extends Node2D

@export var texture_on: Texture2D
@export var texture_off: Texture2D
@export var resource_name: String





func _process(delta: float) -> void:
	$Sprite2D2/resourceUI.text = Gamedata.get(resource_name).to_metric_name(true)
	$"Sprite2D2/miner upgrade/upgrade cost".text = Gamedata.get(resource_name + "_miner_upgrade_cost").to_metric_name(true)
	
	if Gamedata.get(resource_name + "_miner_on_off") == true:
		$"Sprite2D2/on off".texture_normal = texture_on
	
	elif Gamedata.get(resource_name + "_miner_on_off") == false:
		$"Sprite2D2/on off".texture_normal = texture_off
	
	if Gamedata.get(resource_name + "_miner_on_off") == true:
		Gamedata.get(resource_name).plus_equals(Gamedata.get(resource_name + "_per_sec").multiply(delta))



func _on_miner_upgrade_pressed() -> void:
	if Gamedata.get(resource_name).is_greater_than_or_equal_to(Gamedata.get(resource_name + "_miner_upgrade_cost")):
		Gamedata.set(resource_name + "_miner_on_off", true)
		Gamedata.set(resource_name + "_miner_unlocked", true)
		Gamedata.get(resource_name).minus_equals(Gamedata.get(resource_name + "_miner_upgrade_cost"))
		Gamedata.get(resource_name + "_miner_upgrade_cost").multiply_equals(Gamedata.get(resource_name + "_miner_upgrade_cost_multiplier"))
		Gamedata.get(resource_name + "_per_sec").multiply_equals(Gamedata.get(resource_name + "_per_sec_multiplier"))



func _on_on_off_pressed() -> void:
	if Gamedata.get(resource_name + "_miner_unlocked") == true:
		if Gamedata.get(resource_name + "_miner_on_off") == false:
			Gamedata.set(resource_name + "_miner_on_off", true)
		elif Gamedata.get(resource_name + "_miner_on_off") == true:
			Gamedata.set(resource_name + "_miner_on_off", false)



func _on_resource_pressed() -> void:
	if Gamedata.pickaxe_level >= Gamedata.get(resource_name + "_pickaxe_level_req"):
		Gamedata.get(resource_name).plus_equals(Gamedata.pickaxe_click_multiplier)



func _on_max_upgrade_pressed() -> void:
	while true:
		if Gamedata.get(resource_name).is_greater_than_or_equal_to(Gamedata.get(resource_name + "_miner_upgrade_cost")):
			Gamedata.set(resource_name + "_miner_on_off", true)
			Gamedata.set(resource_name + "_miner_unlocked", true)
			Gamedata.get(resource_name).minus_equals(Gamedata.get(resource_name + "_miner_upgrade_cost"))
			Gamedata.get(resource_name + "_miner_upgrade_cost").multiply_equals(Gamedata.get(resource_name + "_miner_upgrade_cost_multiplier"))
			Gamedata.get(resource_name + "_per_sec").multiply_equals(Gamedata.get(resource_name + "_per_sec_multiplier"))
		else: break
		
		
