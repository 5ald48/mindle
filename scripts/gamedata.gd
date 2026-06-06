extends Node
var pickaxe_level : BigNumber = BigNumber.new()
var pickaxe_click_multiplier : BigNumber = BigNumber.new()
var coin : BigNumber = BigNumber.new()
# ── IRON ──────────────────────────────────────
var iron : BigNumber = BigNumber.new()
var iron_per_sec : BigNumber = BigNumber.new()
var iron_per_sec_multiplier : BigNumber = BigNumber.new()
var iron_miner_on_off : bool = false
var iron_miner_unlocked : bool = false
var iron_miner_upgrade_cost : BigNumber = BigNumber.new()
var iron_miner_upgrade_cost_multiplier : BigNumber = BigNumber.new()
# ── GOLD ──────────────────────────────────────
var gold : BigNumber = BigNumber.new()
var gold_per_sec : BigNumber = BigNumber.new()
var gold_per_sec_multiplier : BigNumber = BigNumber.new()
var gold_miner_on_off : bool = false
var gold_miner_unlocked : bool = false
var gold_miner_upgrade_cost : BigNumber = BigNumber.new()
var gold_miner_upgrade_cost_multiplier : BigNumber = BigNumber.new()
# ── COPPER ────────────────────────────────────
var copper : BigNumber = BigNumber.new()
var copper_per_sec : BigNumber = BigNumber.new()
var copper_per_sec_multiplier : BigNumber = BigNumber.new()
var copper_miner_on_off : bool = false
var copper_miner_unlocked : bool = false
var copper_miner_upgrade_cost : BigNumber = BigNumber.new()
var copper_miner_upgrade_cost_multiplier : BigNumber = BigNumber.new()
# ── COAL ──────────────────────────────────────
var coal : BigNumber = BigNumber.new()
var coal_per_sec : BigNumber = BigNumber.new()
var coal_per_sec_multiplier : BigNumber = BigNumber.new()
var coal_miner_on_off : bool = false
var coal_miner_unlocked : bool = false
var coal_miner_upgrade_cost : BigNumber = BigNumber.new()
var coal_miner_upgrade_cost_multiplier : BigNumber = BigNumber.new()
# ── IRON INGOT ────────────────────────────────
var iron_ingot : BigNumber = BigNumber.new()
var iron_ingot_per_sec : BigNumber = BigNumber.new()
var iron_ingot_per_sec_multiplier : BigNumber = BigNumber.new()
var iron_ingot_miner_on_off : bool = false
var iron_ingot_miner_unlocked : bool = false
var iron_ingot_miner_upgrade_cost : BigNumber = BigNumber.new()
var iron_ingot_miner_upgrade_cost_multiplier : BigNumber = BigNumber.new()
var iron_ingot_cost1 : BigNumber = BigNumber.new()

func _ready():
	
	pickaxe_level.mantissa = 4.0
	pickaxe_level.exponent = 0
	pickaxe_click_multiplier.mantissa = 1.0
	pickaxe_click_multiplier.exponent = 0
	coin.mantissa = 0.0
	coin.exponent = 0
	
	
	# ── IRON ──────────────────────────────────────
	iron.mantissa = 0.0
	iron.exponent = 0
	iron_per_sec.mantissa = 1.0
	iron_per_sec.exponent = 0
	iron_per_sec_multiplier.mantissa = 1.1
	iron_per_sec_multiplier.exponent = 0
	iron_miner_upgrade_cost.mantissa = 1.0
	iron_miner_upgrade_cost.exponent = 2
	iron_miner_upgrade_cost_multiplier.mantissa = 1.1
	iron_miner_upgrade_cost_multiplier.exponent = 0
	# ── GOLD ──────────────────────────────────────
	gold.mantissa = 0.0
	gold.exponent = 0
	gold_per_sec.mantissa = 1.0
	gold_per_sec.exponent = 0
	gold_per_sec_multiplier.mantissa = 1.1
	gold_per_sec_multiplier.exponent = 0
	gold_miner_upgrade_cost.mantissa = 1.0
	gold_miner_upgrade_cost.exponent = 2
	gold_miner_upgrade_cost_multiplier.mantissa = 1.1
	gold_miner_upgrade_cost_multiplier.exponent = 0
	# ── COPPER ────────────────────────────────────
	copper.mantissa = 0.0
	copper.exponent = 0
	copper_per_sec.mantissa = 1.0
	copper_per_sec.exponent = 0
	copper_per_sec_multiplier.mantissa = 1.1
	copper_per_sec_multiplier.exponent = 0
	copper_miner_upgrade_cost.mantissa = 1.0
	copper_miner_upgrade_cost.exponent = 2
	copper_miner_upgrade_cost_multiplier.mantissa = 1.1
	copper_miner_upgrade_cost_multiplier.exponent = 0
	# ── COAL ──────────────────────────────────────
	coal.mantissa = 0.0
	coal.exponent = 0
	coal_per_sec.mantissa = 1.0
	coal_per_sec.exponent = 0
	coal_per_sec_multiplier.mantissa = 1.1
	coal_per_sec_multiplier.exponent = 0
	coal_miner_upgrade_cost.mantissa = 1.0
	coal_miner_upgrade_cost.exponent = 2
	coal_miner_upgrade_cost_multiplier.mantissa = 1.1
	coal_miner_upgrade_cost_multiplier.exponent = 0
	# ── IRON INGOT ────────────────────────────────
	iron_ingot.mantissa = 0.0
	iron_ingot.exponent = 0
	iron_ingot_per_sec.mantissa = 1.0
	iron_ingot_per_sec.exponent = 0
	iron_ingot_per_sec_multiplier.mantissa = 1.1
	iron_ingot_per_sec_multiplier.exponent = 0
	iron_ingot_miner_upgrade_cost.mantissa = 1.0
	iron_ingot_miner_upgrade_cost.exponent = 2
	iron_ingot_miner_upgrade_cost_multiplier.mantissa = 1.1
	iron_ingot_miner_upgrade_cost_multiplier.exponent = 0
	iron_ingot_cost1.mantissa = 1.0
	iron_ingot_cost1.exponent = 0
