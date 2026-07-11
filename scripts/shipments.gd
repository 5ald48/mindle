extends Control

@onready var current_tween: Tween
@onready var texture_button: Button = $TextureButton

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
	
	add_to_group("shipments")
	
	
	resource_name1  = random_resource_pick()
	resource_shipment_cost1  =  shipment_cost(resource_name1)
	
	resource_name2  = random_resource_pick()
	resource_shipment_cost2  =  shipment_cost(resource_name2)
	
	resource_name3  = random_resource_pick()
	resource_shipment_cost3  =  shipment_cost(resource_name3)
	
	how_many_resources = randi_range(1 , 3)
	shipment_choice()
	
	

func shipment_reset():
	
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
	if not texture_button.is_hovered():
		current_tween = create_tween()
		current_tween.tween_property(texture_button,"scale",Vector2(1.0 ,1.0),0.1)

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
		
		
		
	if current_tween: current_tween.kill()
	current_tween = create_tween()
	current_tween.tween_property(texture_button,"scale",Vector2(1.1 ,1.1),0.1)
	current_tween.tween_property(texture_button,"scale",Vector2(1.2 ,1.2),0.1)


#the random resoures random choice
func random_resource_pick() -> String:
	
	
	
	var resource_name : String = Gamedata.resource_array.pick_random()
	
	
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
		
		
		$TextureButton/RichTextLabel.show()
		$TextureButton/RichTextLabel2.hide()
		$TextureButton/RichTextLabel3.hide()
		
		$TextureButton/Sprite2D.show()
		$TextureButton/Sprite2D2.hide()
		$TextureButton/Sprite2D3.hide()
		
		$TextureButton/RichTextLabel.text = " " + resource_shipment_cost1.to_metric_name(true) + " "
		
		full_coin_gain1()
		
	elif how_many_resources == 2:
		
		
		$TextureButton/RichTextLabel.show()
		$TextureButton/RichTextLabel2.show()
		$TextureButton/RichTextLabel3.hide()
		
		$TextureButton/Sprite2D.show()
		$TextureButton/Sprite2D2.show()
		$TextureButton/Sprite2D3.hide()
		
		$TextureButton/RichTextLabel.text = " " + resource_shipment_cost1.to_metric_name(true) + " " 
		$TextureButton/RichTextLabel2.text = " " + resource_shipment_cost2.to_metric_name(true) + " "
		
		full_coin_gain2()
		
	elif how_many_resources == 3:
		
		
		$TextureButton/RichTextLabel.show()
		$TextureButton/RichTextLabel2.show()
		$TextureButton/RichTextLabel3.show()
		
		$TextureButton/Sprite2D.show()
		$TextureButton/Sprite2D2.show()
		$TextureButton/Sprite2D3.show()
		
		$TextureButton/RichTextLabel.text = " " + resource_shipment_cost1.to_metric_name(true) + " " 
		$TextureButton/RichTextLabel2.text = " " + resource_shipment_cost2.to_metric_name(true) + " " 
		$TextureButton/RichTextLabel3.text = " " + resource_shipment_cost3.to_metric_name(true) + " "
		
		full_coin_gain3()
	
	
	$TextureButton/Sprite2D.texture = get(resource_name1 + "_texture")
	$TextureButton/Sprite2D2.texture = get(resource_name2 + "_texture")
	$TextureButton/Sprite2D3.texture = get(resource_name3 + "_texture")
	
	$TextureButton/RichTextLabel4.text = " =  " + full_coin_gain.to_metric_name(true) + " "
	
func full_coin_gain1 () -> void:
	full_coin_gain = (resource_shipment_cost1.multiply(Gamedata.get(resource_name1 + "_value")))

func full_coin_gain2 () -> void:
	full_coin_gain = (resource_shipment_cost1.multiply(Gamedata.get(resource_name1 + "_value"))).plus((resource_shipment_cost2.multiply(Gamedata.get(resource_name2 + "_value"))))
	
func full_coin_gain3 () -> void:
	full_coin_gain = (resource_shipment_cost1.multiply(Gamedata.get(resource_name1 + "_value"))).plus((resource_shipment_cost2.multiply(Gamedata.get(resource_name2 + "_value")))).plus((resource_shipment_cost3.multiply(Gamedata.get(resource_name3 + "_value"))))
	
	


func _on_texture_button_mouse_entered() -> void:
	if current_tween: current_tween.kill()
	current_tween = create_tween()
	current_tween.tween_property(texture_button,"scale",Vector2(1.2 ,1.2),0.1)
