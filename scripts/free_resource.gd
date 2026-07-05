extends Node2D

@export var texture_on: Texture2D
@export var texture_off: Texture2D
@export var resource_name: String
@onready var upgrade_arrow : Node = $"Sprite2D2/miner upgrade/upgrade_arrow"
@onready var gear: Sprite2D = $Control/gear

var tween_running : bool = false
var gear_tween_running : bool = false
var tween : Tween 
var gear_tween : Tween 



func _process(delta: float) -> void:
	
	#the number of item text
	$Sprite2D2/resourceUI.text = " " + Gamedata.get(resource_name).to_metric_name(true)
	
	#the upgrade cost text
	$"Sprite2D2/miner upgrade/upgrade cost".text = " " + Gamedata.get(resource_name + "_miner_upgrade_cost").to_metric_name(true)
	
	#the on/off texture
	if Gamedata.get(resource_name + "_miner_on_off") == true:
		$"Sprite2D2/on off".texture_normal = texture_on
	
	elif Gamedata.get(resource_name + "_miner_on_off") == false:
		$"Sprite2D2/on off".texture_normal = texture_off
	
	
	#the autominer colloection
	if Gamedata.get(resource_name + "_miner_on_off") == true:
		Gamedata.get(resource_name).plus_equals(Gamedata.get(resource_name + "_per_sec").multiply(delta))
		
	$"Sprite2D/per sec".text = " " + Gamedata.get(resource_name + "_per_sec").to_metric_name(false) + "/s "
	
	
	#upgrade sympol tween
	if Gamedata.get(resource_name).is_greater_than_or_equal_to(Gamedata.get(resource_name + "_miner_upgrade_cost")) and tween_running == false:
		
		tween_running = true
		
		
		if tween: tween.kill()
		tween = create_tween()
		
		tween.set_trans(Tween.TRANS_BOUNCE)
		tween.set_ease(Tween.EASE_OUT)
		tween.tween_property(upgrade_arrow,"position:y",-2,0.5).as_relative()
		tween.tween_property(upgrade_arrow,"position:y",2,0.5).as_relative()
		
		
		await tween.finished 
		tween_running = false



#gear tween
	if Gamedata.get(resource_name + "_miner_on_off") == true and gear_tween_running == false:
		
		gear_tween_running = true
		
		
		if gear_tween: gear_tween.kill()
		gear_tween = create_tween()
		
		
		gear_tween.tween_property(gear,"rotation",1,0.1).as_relative()

		
		
		await gear_tween.finished 
		gear_tween_running = false





#miner upgrade func
func _on_miner_upgrade_pressed() -> void:
	if Gamedata.get(resource_name).is_greater_than_or_equal_to(Gamedata.get(resource_name + "_miner_upgrade_cost")):
		Gamedata.set(resource_name + "_miner_on_off", true)
		Gamedata.set(resource_name + "_miner_unlocked", true)
		Gamedata.get(resource_name).minus_equals(Gamedata.get(resource_name + "_miner_upgrade_cost"))
		Gamedata.get(resource_name + "_miner_upgrade_cost").multiply_equals(Gamedata.get(resource_name + "_miner_upgrade_cost_multiplier"))
		Gamedata.get(resource_name + "_per_sec").multiply_equals(Gamedata.per_sec_multiplier)


#the on/off func
func _on_on_off_pressed() -> void:
	if Gamedata.get(resource_name + "_miner_unlocked") == true:
		if Gamedata.get(resource_name + "_miner_on_off") == false:
			Gamedata.set(resource_name + "_miner_on_off", true)
		elif Gamedata.get(resource_name + "_miner_on_off") == true:
			Gamedata.set(resource_name + "_miner_on_off", false)


#the click collection func
func _on_resource_pressed() -> void:
	if Gamedata.pickaxe_level >= Gamedata.get(resource_name + "_pickaxe_level_req"):
		Gamedata.get(resource_name).plus_equals(Gamedata.pickaxe_click_multiplier)


#the max upgrade botton func
func _on_max_upgrade_pressed() -> void:
	while true:
		if Gamedata.get(resource_name).is_greater_than_or_equal_to(Gamedata.get(resource_name + "_miner_upgrade_cost")):
			Gamedata.set(resource_name + "_miner_on_off", true)
			Gamedata.set(resource_name + "_miner_unlocked", true)
			Gamedata.get(resource_name).minus_equals(Gamedata.get(resource_name + "_miner_upgrade_cost"))
			Gamedata.get(resource_name + "_miner_upgrade_cost").multiply_equals(Gamedata.get(resource_name + "_miner_upgrade_cost_multiplier"))
			Gamedata.get(resource_name + "_per_sec").multiply_equals(Gamedata.per_sec_multiplier)
		else: break
		
		
