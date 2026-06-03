extends Node

var pickaxe_level : int = 4

var coin : BigNumber = BigNumber.new()
var iron : BigNumber = BigNumber.new()
var gold : BigNumber = BigNumber.new()
var copper : BigNumber = BigNumber.new()
var coal : BigNumber = BigNumber.new()


# auto collecting speed
var iron_per_sec : BigNumber = BigNumber.new()
var gold_per_sec : BigNumber = BigNumber.new()
var copper_per_sec : BigNumber = BigNumber.new()
var coal_per_sec : BigNumber = BigNumber.new()


# if player has unlocked the upgrade
var iron_miner_on_off : bool = false
var gold_miner_on_off : bool = false
var copper_miner_on_off : bool = false
var coal_miner_on_off : bool = false


# upgrade cost
var iron_miner_upgrade_cost : BigNumber = BigNumber.new()


func _ready():
	
	coin.mantissa = 0.0
	coin.exponent = 0
	
	iron.mantissa = 0.0
	iron.exponent = 0
	
	coal.mantissa = 0.0
	coal.exponent = 0
	
	copper.mantissa = 0.0
	copper.exponent = 0
	
	gold.mantissa = 0.0
	gold.exponent = 0
	
	
	iron_per_sec.mantissa = 1.0
	iron_per_sec.exponent = 0
	
	gold_per_sec.mantissa = 1.0
	gold_per_sec.exponent = 0
	
	copper_per_sec.mantissa = 1.0
	copper_per_sec.exponent = 0
	
	coal_per_sec.mantissa = 1.0
	coal_per_sec.exponent = 0
	
	iron_miner_upgrade_cost.mantissa = 1.0
	iron_miner_upgrade_cost.exponent = 2  # 100
