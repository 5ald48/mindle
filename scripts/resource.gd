extends Node2D

@export var texture_on: Texture2D
@export var texture_off: Texture2D
@export var unlocked_lock: Texture2D
@export var resource_name: String  
@export var resource_used1: String 
@export var unolock_cost1 : float
@onready var unlock_node : Node = $unlock
@onready var upgrade_arrow : Node = $"Sprite2D2/miner upgrade/upgrade_arrow"
@onready var collecting_button : Node = $Sprite2D2/resource

var tween : Tween


func _ready() -> void:
	
	#cost of item text
	$"cost/cost label".text = " " + str(Gamedata.get(resource_name + "_cost1")) + " "
	
	$"unlock/Control/Sprite2D2/unlock_cost".text = "     "  +  str(int(unolock_cost1))

	if Gamedata.get(resource_name + "_miner_unlocked") == true and unlock_node.visible:
		unlock_node.hide()


	collecting_button.hide()

	if Gamedata.get(resource_name + "_miner_unlocked") == true and not collecting_button.visible:
		collecting_button.show()


func _process(delta: float) -> void:
	
	#how much resource text
	$Sprite2D2/resourceUI.text = " " + Gamedata.get(resource_name).to_metric_name(true)

#miner upgrade cost text
	$"Sprite2D2/miner upgrade/upgrade cost".text = " " + Gamedata.get(resource_name + "_miner_upgrade_cost").to_metric_name(true)
	
	
	#the on/off texture
	if Gamedata.get(resource_name + "_miner_on_off") == true:
		$"Sprite2D2/on off".texture_normal = texture_on
	
	elif Gamedata.get(resource_name + "_miner_on_off") == false:
		$"Sprite2D2/on off".texture_normal = texture_off
	
	
	#the autominer collection
	
	#if Gamedata.get(resource_name + "_miner_on_off") == true and Gamedata.get(resource_used1).is_greater_than_or_equal_to((Gamedata.get(resource_name + "_per_sec" ).multiply(delta).multiply(Gamedata.get(resource_name + "_cost1")))):
	#if Gamedata.get(resource_name + "_miner_on_off") == true and Gamedata.get(resource_used1).is_greater_than_or_equal_to((Gamedata.get(resource_name + "_cost1").multiply(delta))): 
	if Gamedata.get(resource_name + "_miner_on_off") == true and Gamedata.get(resource_used1).is_greater_than_or_equal_to(Gamedata.get(resource_name + "_cost1")): 
		
		Gamedata.get(resource_name).plus_equals(Gamedata.get(resource_name + "_per_sec").multiply(delta))
		Gamedata.get(resource_used1).minus_equals((Gamedata.get(resource_name + "_per_sec" ).multiply(delta).multiply(Gamedata.get(resource_name + "_cost1"))))
	
	
	$"Sprite2D/per sec".text = " " + Gamedata.get(resource_name + "_per_sec").to_metric_name(false) + "/s "
	
	
	
	
	#upgrade sympol tween
	#if Gamedata.get(resource_name).is_greater_than_or_equal_to(Gamedata.get(resource_name + "_miner_upgrade_cost")):
		#if tween: tween.kill()
		#tween = create_tween()
		#tween.tween_property(upgrade_arrow,"position:y",-0.5,0.1).as_relative()
		#tween.tween_property(upgrade_arrow,"position:y",0.0,0.1).as_relative()





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
	if Gamedata.get(resource_used1).is_greater_than_or_equal_to((Gamedata.get(resource_name + "_cost1").multiply(Gamedata.pickaxe_click_multiplier))):
		Gamedata.get(resource_name).plus_equals(Gamedata.pickaxe_click_multiplier)
		Gamedata.get(resource_used1).minus_equals(Gamedata.get(resource_name + "_cost1").multiply(Gamedata.pickaxe_click_multiplier))


#the max upgrade botton func
func _on_max_upgrade_pressed() -> void:
		while true:
			if Gamedata.get(resource_name).is_greater_than_or_equal_to(Gamedata.get(resource_name + "_miner_upgrade_cost")):
				Gamedata.set(resource_name + "_miner_on_off", true)
				Gamedata.set(resource_name + "_miner_unlocked", true)
				Gamedata.get(resource_name).minus_equals(Gamedata.get(resource_name + "_miner_upgrade_cost"))
				Gamedata.get(resource_name + "_miner_upgrade_cost").multiply_equals(Gamedata.get(resource_name + "_miner_upgrade_cost_multiplier"))
				Gamedata.get(resource_name + "_per_sec").multiply_equals(Gamedata.per_sec_multiplier)
			
			else : break






func _on_unlock_pressed() -> void:
	if Gamedata.get(resource_used1).is_greater_than_or_equal_to(unolock_cost1):
		collecting_button.show()
		Gamedata.get(resource_used1).minus_equals(unolock_cost1)
		Gamedata.set(resource_name + "_miner_unlocked", true)
		$unlock.hide()
		
		
		
		
