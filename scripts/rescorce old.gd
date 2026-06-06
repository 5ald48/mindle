extends Node2D

@export var texture_on : Texture2D
@export var texture_off : Texture2D


func _ready() -> void:
	pass 



func _process(delta: float) -> void:
	
	$Sprite2D2/ironUI.text =  Gamedata.iron.to_metric_name(true)
	
	$"Sprite2D2/miner upgrade/upgrade cost".text = Gamedata.iron_miner_upgrade_cost.to_metric_name(true)
	
	if Gamedata.iron_miner_on_off == true :
		$"Sprite2D2/on off".texture_normal = texture_on
	
	elif  Gamedata.iron_miner_on_off == false:
		$"Sprite2D2/on off".texture_normal = texture_off
		
	if Gamedata.iron_miner_on_off == true:
		Gamedata.iron.plus_equals(Gamedata.iron_per_sec.multiply(delta))





func _on_miner_upgrade_pressed() -> void:
	if Gamedata.iron.is_greater_than_or_equal_to(Gamedata.iron_miner_upgrade_cost):
		Gamedata.iron_miner_on_off = true
		Gamedata.iron_miner_unlocked = true
		Gamedata.iron.minus_equals(Gamedata.iron_miner_upgrade_cost)
		Gamedata.iron_miner_upgrade_cost.multiply_equals(Gamedata.iron_miner_upgrade_cost_multiplier)
		Gamedata.iron_per_sec.multiply_equals(Gamedata.iron_per_sec_multiplier)


func _on_on_off_pressed() -> void:
	if Gamedata.iron_miner_unlocked == true :
		
		if Gamedata.iron_miner_on_off == false :
			Gamedata.iron_miner_on_off = true
			
		
		
		elif Gamedata.iron_miner_on_off == true :
			Gamedata.iron_miner_on_off = false
			




func _on_resource_pressed() -> void:
	if Gamedata.pickaxe_level >= 1:
		Gamedata.iron.plus_equals(Gamedata.pickaxe_click_multiplier)
