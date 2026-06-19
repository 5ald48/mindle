extends Control

#textures vars
@export var coin_texture : Texture2D
@export var iron_texture : Texture2D
@export var gold_texture : Texture2D
@export var copper_texture : Texture2D
@export var coal_texture : Texture2D
@export var iron_ingot_texture : Texture2D
@export var copper_ingot_texture : Texture2D
@export var gold_ingot_texture : Texture2D
@export var iron_screw_texture : Texture2D
@export var iron_plate_texture : Texture2D
@export var copper_wire_texture : Texture2D
@export var steel_ingot_texture : Texture2D
@export var sand_texture : Texture2D
@export var glass_texture : Texture2D
@export var steel_gear_texture : Texture2D
@export var gold_wire_texture : Texture2D
@export var circuit_board_texture : Texture2D


#resoures and cost vars
var resource_name1 :String 
var resource_shipment_cost1 :BigNumber 

var resource_name2 :String 
var resource_shipment_cost2 :BigNumber 

var resource_name3 :String 
var resource_shipment_cost3 :BigNumber 

#how many resources on the shipment 1-2-3
var how_many_resources : int

var full_coin_gain : BigNumber

#just the first random resoures shipment
func _ready() -> void:
	
	
	resource_name1  = random_resource_pick()
	resource_shipment_cost1  =  shipment_cost(resource_name1)
	
	resource_name2  = random_resource_pick()
	resource_shipment_cost2  =  shipment_cost(resource_name2)
	
	resource_name3  = random_resource_pick()
	resource_shipment_cost3  =  shipment_cost(resource_name3)
	
	how_many_resources = randi_range(1 , 3)
	shipment_choice()
	
	



#shipment resourses icon
func _process(_delta: float) -> void:
	pass

#the botton on click comands
func _on_texture_button_pressed() -> void:
	
	if how_many_resources == 1:
		shipment_procces_1_resource()
		shipment_choice()
		
	elif how_many_resources == 2:
		shipment_procces_2_resource()
		shipment_choice()
		
	elif how_many_resources == 3:
		shipment_procces_3_resource()
		shipment_choice()


#the random resoures random choice
func random_resource_pick() -> String:
	
	var random_resource_array = [
	"iron",
	"gold",
	"copper",
	"coal",
	"iron_ingot",
	"copper_ingot",
	"gold_ingot",
	"iron_screw",
	"iron_plate",
	"copper_wire",
	"steel_ingot",
	"sand",
	"glass",
	"steel_gear",
	"gold_wire",
	"circuit_board"]
	
	var resource_name : String = random_resource_array.pick_random()
	
	
	return resource_name
 


#the shipment cost for every resourses
func shipment_cost(resource_name: String) -> BigNumber:
	var random_number_array_cost_multiply  = [0.25,0.5,0.75,1.25,1.5,1.75,2]
	var random_cost_multiplayer :float = random_number_array_cost_multiply.pick_random()
	var resource_shipment_cost :BigNumber =  (Gamedata.get(resource_name).plus(1000).multiply(random_cost_multiplayer))
	return resource_shipment_cost


#only 1 shipment resoures func
func shipment_procces_1_resource() -> void:
	
	
	if Gamedata.get(resource_name1).is_greater_than_or_equal_to(resource_shipment_cost1):
		
		Gamedata.set(resource_name1,Gamedata.get(resource_name1).minus_equals(resource_shipment_cost1))
		
		full_coin_gain1()
		Gamedata.coin.plus_equals(full_coin_gain)
		
		resource_name1  = random_resource_pick()
		resource_shipment_cost1  =  shipment_cost(resource_name1)
		
		how_many_resources = randi_range(1 , 3)


#only 2 shipment resoures func
func shipment_procces_2_resource() -> void:
	
	
	if Gamedata.get(resource_name1).is_greater_than_or_equal_to(resource_shipment_cost1) and Gamedata.get(resource_name2).is_greater_than_or_equal_to(resource_shipment_cost2):    
		
		Gamedata.set(resource_name1,Gamedata.get(resource_name1).minus_equals(resource_shipment_cost1))
		Gamedata.set(resource_name2,Gamedata.get(resource_name2).minus_equals(resource_shipment_cost2))
		
		full_coin_gain2()
		Gamedata.coin.plus_equals(full_coin_gain)
		
		
		resource_name1  = random_resource_pick()
		resource_shipment_cost1  =  shipment_cost(resource_name1)
		
		resource_name2  = random_resource_pick()
		resource_shipment_cost2  =  shipment_cost(resource_name2)
		
		how_many_resources = randi_range(1 , 3)


#only 3 shipment resoures func
func shipment_procces_3_resource() -> void:
	
	
	if Gamedata.get(resource_name1).is_greater_than_or_equal_to(resource_shipment_cost1) and Gamedata.get(resource_name2).is_greater_than_or_equal_to(resource_shipment_cost2) and Gamedata.get(resource_name3).is_greater_than_or_equal_to(resource_shipment_cost3):  
		
		Gamedata.set(resource_name1,Gamedata.get(resource_name1).minus_equals(resource_shipment_cost1))
		Gamedata.set(resource_name2,Gamedata.get(resource_name2).minus_equals(resource_shipment_cost2))
		Gamedata.set(resource_name3,Gamedata.get(resource_name3).minus_equals(resource_shipment_cost3))
		
		full_coin_gain3()
		Gamedata.coin.plus_equals(full_coin_gain)
		
		
		resource_name1  = random_resource_pick()
		resource_shipment_cost1  =  shipment_cost(resource_name1)
		
		resource_name2  = random_resource_pick()
		resource_shipment_cost2  =  shipment_cost(resource_name2)
		
		resource_name3  = random_resource_pick()
		resource_shipment_cost3  =  shipment_cost(resource_name3)
		
		how_many_resources = randi_range(1 , 3)


#what happens for every shipment count 1-2-3
func shipment_choice() -> void:
	
	while true :
		
		if resource_name1 == resource_name2 :
			resource_name1  = random_resource_pick()
			resource_shipment_cost1  =  shipment_cost(resource_name1)
		
		elif resource_name1 == resource_name3 :
			resource_name3  = random_resource_pick()
			resource_shipment_cost3  =  shipment_cost(resource_name3)
			
		elif resource_name2 == resource_name3 :
			resource_name2  = random_resource_pick()
			resource_shipment_cost2  =  shipment_cost(resource_name2)
			
		else : break
	
	
	
	
	if how_many_resources == 1:
		
		
		$RichTextLabel.show()
		$RichTextLabel2.hide()
		$RichTextLabel3.hide()
		
		$Sprite2D.show()
		$Sprite2D2.hide()
		$Sprite2D3.hide()
		
		$RichTextLabel.text = " " + resource_shipment_cost1.to_metric_name(true) + " "
		
		full_coin_gain1()
		
	elif how_many_resources == 2:
		
		
		$RichTextLabel.show()
		$RichTextLabel2.show()
		$RichTextLabel3.hide()
		
		$Sprite2D.show()
		$Sprite2D2.show()
		$Sprite2D3.hide()
		
		$RichTextLabel.text = " " + resource_shipment_cost1.to_metric_name(true) + " " 
		$RichTextLabel2.text = " " + resource_shipment_cost2.to_metric_name(true) + " "
		
		full_coin_gain2()
		
	elif how_many_resources == 3:
		
		
		$RichTextLabel.show()
		$RichTextLabel2.show()
		$RichTextLabel3.show()
		
		$Sprite2D.show()
		$Sprite2D2.show()
		$Sprite2D3.show()
		
		$RichTextLabel.text = " " + resource_shipment_cost1.to_metric_name(true) + " " 
		$RichTextLabel2.text = " " + resource_shipment_cost2.to_metric_name(true) + " " 
		$RichTextLabel3.text = " " + resource_shipment_cost3.to_metric_name(true) + " "
		
		full_coin_gain3()
	
	
	$Sprite2D.texture = get(resource_name1 + "_texture")
	$Sprite2D2.texture = get(resource_name2 + "_texture")
	$Sprite2D3.texture = get(resource_name3 + "_texture")
	
	$RichTextLabel4.text = " =  " + full_coin_gain.to_metric_name(true) + " "
	
func full_coin_gain1 () -> void:
	full_coin_gain = (resource_shipment_cost1.multiply(Gamedata.get(resource_name1 + "_value")))

func full_coin_gain2 () -> void:
	full_coin_gain = (resource_shipment_cost1.multiply(Gamedata.get(resource_name1 + "_value"))).plus((resource_shipment_cost2.multiply(Gamedata.get(resource_name2 + "_value"))))
	
func full_coin_gain3 () -> void:
	full_coin_gain = (resource_shipment_cost1.multiply(Gamedata.get(resource_name1 + "_value"))).plus((resource_shipment_cost2.multiply(Gamedata.get(resource_name2 + "_value")))).plus((resource_shipment_cost3.multiply(Gamedata.get(resource_name3 + "_value"))))
	
	
