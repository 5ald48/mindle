extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	
	$"pickaxe level upgrade/pickaxe level".text = "pickaxe level = " + str(Gamedata.pickaxe_level)
	
	$"pickaxe click upgrade/pickaxe multyplier".text = "pickaxe click power = " + str(Gamedata.pickaxe_click_multiplier)
	
	if Gamedata.pickaxe_level == 1:
		
		Gamedata.pickaxe_upgradecost1.mantissa = 1.0
		Gamedata.pickaxe_upgradecost1.exponent = 3
		
		$"pickaxe level upgrade/pickaxe level req".text = "  " + Gamedata.pickaxe_upgradecost1.to_metric_name(true)
		
		$"pickaxe level upgrade/Sprite2D".show()
		$"pickaxe level upgrade/Sprite2D2".hide()
		$"pickaxe level upgrade/Sprite2D3".hide()
		
	elif Gamedata.pickaxe_level == 2:
		
		Gamedata.pickaxe_upgradecost1.mantissa = 1.0
		Gamedata.pickaxe_upgradecost1.exponent = 4
		
		Gamedata.pickaxe_upgradecost2.mantissa = 1.0
		Gamedata.pickaxe_upgradecost2.exponent = 3
		
		$"pickaxe level upgrade/pickaxe level req".text = Gamedata.pickaxe_upgradecost1.to_metric_name(true) + "\n" + Gamedata.pickaxe_upgradecost2.to_metric_name(true)
		
		$"pickaxe level upgrade/Sprite2D".show()
		$"pickaxe level upgrade/Sprite2D2".show()
		$"pickaxe level upgrade/Sprite2D3".hide()
		
	elif Gamedata.pickaxe_level == 3:
		
		Gamedata.pickaxe_upgradecost1.mantissa = 1.0
		Gamedata.pickaxe_upgradecost1.exponent = 5
		
		Gamedata.pickaxe_upgradecost2.mantissa = 1.0
		Gamedata.pickaxe_upgradecost2.exponent = 4
		
		Gamedata.pickaxe_upgradecost3.mantissa = 1.0
		Gamedata.pickaxe_upgradecost3.exponent = 3
		
		$"pickaxe level upgrade/pickaxe level req".text = Gamedata.pickaxe_upgradecost1.to_metric_name(true) + "\n" + Gamedata.pickaxe_upgradecost2.to_metric_name(true) + "\n" + Gamedata.pickaxe_upgradecost3.to_metric_name(true)
		
		$"pickaxe level upgrade/Sprite2D".show()
		$"pickaxe level upgrade/Sprite2D2".show()
		$"pickaxe level upgrade/Sprite2D3".show()
		
	elif Gamedata.pickaxe_level == 4:
		$"pickaxe level upgrade/pickaxe level req".text = "\nmax level"
		
		$"pickaxe level upgrade/Sprite2D".hide()
		$"pickaxe level upgrade/Sprite2D2".hide()
		$"pickaxe level upgrade/Sprite2D3".hide()
		


func _on_pickaxe_level_upgrade_pressed() -> void:
	if Gamedata.pickaxe_level == 1 and Gamedata.iron.is_greater_than_or_equal_to(Gamedata.pickaxe_upgradecost1):
		Gamedata.pickaxe_level += 1
		Gamedata.iron.minus_equals(Gamedata.pickaxe_upgradecost1)
	
	elif  Gamedata.pickaxe_level == 2 and Gamedata.iron.is_greater_than_or_equal_to(Gamedata.pickaxe_upgradecost1) and Gamedata.coal.is_greater_than_or_equal_to(Gamedata.pickaxe_upgradecost2):
		Gamedata.pickaxe_level += 1
		Gamedata.iron.minus_equals(Gamedata.pickaxe_upgradecost1)
		Gamedata.coal.minus_equals(Gamedata.pickaxe_upgradecost2)
	
	elif  Gamedata.pickaxe_level == 3 and Gamedata.iron.is_greater_than_or_equal_to(Gamedata.pickaxe_upgradecost1) and Gamedata.coal.is_greater_than_or_equal_to(Gamedata.pickaxe_upgradecost2) and Gamedata.copper.is_greater_than_or_equal_to(Gamedata.pickaxe_upgradecost3):
		Gamedata.pickaxe_level += 1
		Gamedata.iron.minus_equals(Gamedata.pickaxe_upgradecost1)
		Gamedata.coal.minus_equals(Gamedata.pickaxe_upgradecost2)
		Gamedata.copper.minus_equals(Gamedata.pickaxe_upgradecost3)


func _on_pickaxe_click_upgrade_pressed() -> void:
	pass # Replace with function body.
