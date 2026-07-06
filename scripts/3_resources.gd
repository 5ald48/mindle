extends Node2D

@export var texture_on: Texture2D
@export var texture_off: Texture2D
@export var unlocked_lock: Texture2D
@export var resource_name: String  
@export var resource_used1: String 
@export var resource_used2: String 
@export var resource_used3: String
@export var unolock_cost1 : float
@export var unolock_cost2 : float
@export var unolock_cost3 : float
@onready var unlock_node : Node = $unlock
@onready var collecting_button : Node = $Sprite2D2/resource
@onready var upgrade_arrow : Node = $"Sprite2D2/miner upgrade/upgrade_arrow"
@onready var gear: Sprite2D = $Control/gear
@onready var resource_clickble: TextureButton = $Sprite2D2/resource

var tween_running : bool = false
var gear_tween_running : bool = false
var upgrade_arrow_tween_running : bool = false

var tween : Tween 
var gear_tween : Tween
var upgrade_arrow_tween : Tween 
var floating_click_text_tween : Tween

func _ready() -> void:
	
	#cost of item text
	$"cost/cost label".text = " " + str(Gamedata.get(resource_name + "_cost1")) + "    " + str(Gamedata.get(resource_name + "_cost2")) + "    " + str(Gamedata.get(resource_name + "_cost3")) + " "
	
	$"unlock/Control/Sprite2D2/unlock_cost".text = "                 " + str(int(unolock_cost1)) + "               " + str(int(unolock_cost2)) + "                  " + str(int(unolock_cost3))
	
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
	if Gamedata.get(resource_name + "_miner_on_off") == true and Gamedata.get(resource_used1).is_greater_than_or_equal_to(Gamedata.get(resource_name + "_cost1")) and Gamedata.get(resource_used2).is_greater_than_or_equal_to(Gamedata.get(resource_name + "_cost2")) and Gamedata.get(resource_used3).is_greater_than_or_equal_to(Gamedata.get(resource_name + "_cost3")):
		
		Gamedata.get(resource_name).plus_equals(Gamedata.get(resource_name + "_per_sec").multiply(delta))
		Gamedata.get(resource_used1).minus_equals((Gamedata.get(resource_name + "_per_sec" ).multiply(delta).multiply(Gamedata.get(resource_name + "_cost1"))))
		Gamedata.get(resource_used2).minus_equals((Gamedata.get(resource_name + "_per_sec" ).multiply(delta).multiply(Gamedata.get(resource_name + "_cost2"))))
		Gamedata.get(resource_used3).minus_equals((Gamedata.get(resource_name + "_per_sec" ).multiply(delta).multiply(Gamedata.get(resource_name + "_cost3"))))
	
	
	
	$"Sprite2D/per sec".text = " " + Gamedata.get(resource_name + "_per_sec").to_metric_name(false) + "/s "
	
	
	#upgrade sympol tween
	if Gamedata.get(resource_name + "").is_greater_than_or_equal_to(Gamedata.get(resource_name + "_miner_upgrade_cost")) and upgrade_arrow_tween_running == false:
		
		upgrade_arrow_tween_running = true
		
		
		if upgrade_arrow_tween: upgrade_arrow_tween.kill()
		upgrade_arrow_tween = create_tween()
		
		upgrade_arrow_tween.set_trans(Tween.TRANS_BOUNCE)
		upgrade_arrow_tween.set_ease(Tween.EASE_OUT)
		upgrade_arrow_tween.tween_property(upgrade_arrow,"position:y",-2,0.5).as_relative()
		upgrade_arrow_tween.tween_property(upgrade_arrow,"position:y",2,0.5).as_relative()
		
		
		await upgrade_arrow_tween.finished 
		upgrade_arrow_tween_running = false



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
	if Gamedata.get(resource_used1).is_greater_than_or_equal_to((Gamedata.get(resource_name + "_cost1").multiply(Gamedata.pickaxe_click_multiplier))) and Gamedata.get(resource_used2).is_greater_than_or_equal_to((Gamedata.get(resource_name + "_cost2").multiply(Gamedata.pickaxe_click_multiplier))) and Gamedata.get(resource_used3).is_greater_than_or_equal_to((Gamedata.get(resource_name + "_cost3").multiply(Gamedata.pickaxe_click_multiplier))):
		Gamedata.get(resource_name).plus_equals(Gamedata.pickaxe_click_multiplier)
		Gamedata.get(resource_used1).minus_equals(Gamedata.get(resource_name + "_cost1").multiply(Gamedata.pickaxe_click_multiplier))
		Gamedata.get(resource_used2).minus_equals(Gamedata.get(resource_name + "_cost2").multiply(Gamedata.pickaxe_click_multiplier))
		Gamedata.get(resource_used3).minus_equals(Gamedata.get(resource_name + "_cost3").multiply(Gamedata.pickaxe_click_multiplier))
		
		
		var rich_label = RichTextLabel.new()
		
		var x = randf_range(-5.0,10.0)
		var y = randf_range(-5.0,10.0)
		
		rich_label.text = "[rainbow] +" + str(Gamedata.pickaxe_click_multiplier) 
		rich_label.bbcode_enabled = true
		rich_label.z_index = 1000
		rich_label.position =Vector2(x,y)
		rich_label.size = Vector2(16,16)
		rich_label.scale = Vector2(0.5,0.5)
		rich_label.fit_content = true
		rich_label.autowrap_mode = TextServer.AUTOWRAP_OFF
		rich_label.mouse_filter = Control.MOUSE_FILTER_IGNORE
		
		

		
		resource_clickble.add_child(rich_label)
		
		
		
		
		floating_click_text_tween = create_tween()
		floating_click_text_tween.set_trans(Tween.TRANS_CUBIC)
		
		floating_click_text_tween.tween_property(rich_label,"position:y",-20.0,1.0).as_relative()
		floating_click_text_tween.parallel().tween_property(rich_label,"modulate:a",0.0,1.0)
		
		
		
		
		floating_click_text_tween.tween_callback(rich_label.queue_free)






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
	if Gamedata.get(resource_used1).is_greater_than_or_equal_to(unolock_cost1) and Gamedata.get(resource_used2).is_greater_than_or_equal_to(unolock_cost2) and Gamedata.get(resource_used3).is_greater_than_or_equal_to(unolock_cost3):
		collecting_button.show()
		Gamedata.get(resource_used1).minus_equals(unolock_cost1)
		Gamedata.get(resource_used2).minus_equals(unolock_cost2)
		Gamedata.get(resource_used3).minus_equals(unolock_cost3)
		Gamedata.set(resource_name + "_miner_unlocked", true)

		$unlock/unlock.texture_normal = unlocked_lock
		
		tween = create_tween()
		
		
		# the lock
		tween.set_trans(Tween.TRANS_CIRC)
		tween.set_ease(Tween.EASE_OUT)
		tween.tween_property($unlock/unlock, "position", Vector2(20,-20),0.4).as_relative()
		tween.parallel().tween_property($unlock/unlock, "rotation_degrees", 45.0,0.4).as_relative()
		
		#the lock fallen
		tween.set_trans(Tween.TRANS_CIRC)
		tween.set_ease(Tween.EASE_IN)
		tween.tween_property($unlock/unlock, "position", Vector2(300,1000),0.5).as_relative()
		tween.parallel().tween_property($unlock/unlock, "rotation_degrees", 180.0,0.2).as_relative()
		
		
		
		#lock mrb3
		tween.set_trans(Tween.TRANS_BOUNCE)
		tween.set_ease(Tween.EASE_OUT)
		tween.parallel().tween_property($unlock/Control, "modulate:a", 0.0,2.0)
		
		
		#chain left
		tween.set_trans(Tween.TRANS_BOUNCE)
		tween.set_ease(Tween.EASE_OUT)
		tween.parallel().tween_property($unlock/Control3_left, "rotation_degrees", 90.0,2.0).as_relative()
		tween.parallel().tween_property($unlock/Control3_left, "modulate:a", 0.0,2.0)
		
		#chain right
		tween.set_trans(Tween.TRANS_BOUNCE)
		tween.set_ease(Tween.EASE_OUT)
		tween.parallel().tween_property($unlock/Control4_right, "rotation_degrees", -90.0,2.0).as_relative()
		tween.parallel().tween_property($unlock/Control4_right, "modulate:a", 0.0,2.0)
		
		
		
		
		await tween.finished
		$unlock.hide()
