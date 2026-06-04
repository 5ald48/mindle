extends Node

var pickaxe_level : int = 4
var pickaxe_click_multiplier : int = 1

#items
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

#auto collecting multiplier
var iron_per_sec_multiplier :float = 1.1
var gold_per_sec_multiplier :float = 1.1
var copper_per_sec_multiplier :float = 1.1
var coal_per_sec_multiplier :float = 1.1


# if the machain is on or off
var iron_miner_on_off : bool = false
var gold_miner_on_off : bool = false
var copper_miner_on_off : bool = false
var coal_miner_on_off : bool = false

# if player has unlocked the upgrade
var iron_miner_unlocked : bool = false
var coal_miner_unlocked : bool = false
var copper_miner_unlocked : bool = false
var gold_miner_unlocked : bool = false

# upgrade cost
var iron_miner_upgrade_cost : BigNumber = BigNumber.new()
var coal_miner_upgrade_cost : BigNumber = BigNumber.new()
var copper_miner_upgrade_cost : BigNumber = BigNumber.new()
var gold_miner_upgrade_cost : BigNumber = BigNumber.new()

#upgrade cost multiplier
var iron_miner_upgrade_cost_multiplier :float = 1.1
var coal_miner_upgrade_cost_multiplier :float = 1.1
var copper_miner_upgrade_cost_multiplier :float = 1.1
var gold_miner_upgrade_cost_multiplier :float = 1.1


func _ready():
	
	#items number
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
	
	
	# per sec numbers
	iron_per_sec.mantissa = 1.0
	iron_per_sec.exponent = 0
	
	gold_per_sec.mantissa = 1.0
	gold_per_sec.exponent = 0
	
	copper_per_sec.mantissa = 1.0
	copper_per_sec.exponent = 0
	
	coal_per_sec.mantissa = 1.0
	coal_per_sec.exponent = 0
	
	#auto buildings costs
	iron_miner_upgrade_cost.mantissa = 1.0
	iron_miner_upgrade_cost.exponent = 2  # 100
	
	coal_miner_upgrade_cost.mantissa = 1.0
	coal_miner_upgrade_cost.exponent = 2  # 100
	
	copper_miner_upgrade_cost.mantissa = 1.0
	copper_miner_upgrade_cost.exponent = 2  # 100
	
	gold_miner_upgrade_cost.mantissa = 1.0
	gold_miner_upgrade_cost.exponent = 2  # 100
