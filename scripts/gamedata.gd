extends Node

var pickaxe_level : int = 4

# items
var iron :float = 0.0
var gold :float = 0.0
var copper :float = 0.0
var coal :float = 0.0

# auto collecting speed
var iron_per_sec : float = 1.0
var gold_per_sec : float = 1.0
var copper_per_sec : float = 1.0
var coal_per_sec : float = 1.0

#if player has the unlocked the upgrade
var iron_miner_on_off : bool = false
var gold_miner_on_off : bool = false
var copper_miner_on_off : bool = false
var coal_miner_on_off : bool = false

#upgrade cost
var iron_miner_upgrade_cost : float = 100

func _ready():
	var num = BigNumber.new()
	num.mantissa = 1.5
	num.exponent = 9
	print(num.to_metric_symbol())  # المفروض يطبع: "1.50 G"
	print(num.to_aa())             # المفروض يطبع: "1.50aa"
