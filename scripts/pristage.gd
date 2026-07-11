extends TextureButton

@onready var btn_pristage_cost: TextureButton = $"."
@onready var current_tween: Tween

func prestage_gain() -> BigNumber:
	
	var total_prestage_gain: BigNumber = BigNumber.new()
	
	for resource_name in Gamedata.resource_array:
		var amount: BigNumber = Gamedata.get(resource_name)
		var value: BigNumber = Gamedata.get(resource_name + "_value")
		var product: BigNumber = amount.multiply(value)
		total_prestage_gain.plus_equals(product)
	
	total_prestage_gain.plus_equals(Gamedata.coin)
	total_prestage_gain.divide_equals(Gamedata.resource_array.size())
	
	
	return  total_prestage_gain

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	
	
	if not btn_pristage_cost.is_hovered():
		current_tween = create_tween()
		current_tween.tween_property(btn_pristage_cost,"scale",Vector2(5.0 ,5.0),0.1)

func _on_pressed() -> void:
	if Gamedata.coin.is_greater_than_or_equal_to(Gamedata.pristage_cost):
		Gamedata.pristage_coin.plus_equals(prestage_gain())
		Gamedata.pristage_lvl.plus_equals(1)
		Gamedata.reset()
		get_tree().call_group("shipments", "shipment_reset")
		
		
		
	if current_tween: current_tween.kill()
	current_tween = create_tween()
	current_tween.tween_property(btn_pristage_cost,"scale",Vector2(4.5 ,4.0),0.1)
	current_tween.tween_property(btn_pristage_cost,"scale",Vector2(6.0 ,6.0),0.1)


func _on_mouse_entered() -> void:
	if current_tween: current_tween.kill()
	current_tween = create_tween()
	current_tween.tween_property(btn_pristage_cost,"scale",Vector2(6.0 ,6.0),0.1)
