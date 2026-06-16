extends Node


var pickaxe_level : int = 12
var pickaxe_click_multiplier : int = 1
var pickaxe_click_multiplier_cost : BigNumber = BigNumber.new()
var pickaxe_upgradecost1 : BigNumber = BigNumber.new()
var pickaxe_upgradecost2 : BigNumber = BigNumber.new()
var pickaxe_upgradecost3 : BigNumber = BigNumber.new()

var coin : BigNumber = BigNumber.new()


# ── IRON ──────────────────────────────────────
var iron : BigNumber = BigNumber.new()
var iron_per_sec : BigNumber = BigNumber.new()
var iron_per_sec_multiplier : BigNumber = BigNumber.new()
var iron_miner_on_off : bool = false
var iron_miner_unlocked : bool = false
var iron_miner_upgrade_cost : BigNumber = BigNumber.new()
var iron_miner_upgrade_cost_multiplier : BigNumber = BigNumber.new()
var iron_pickaxe_level_req : int = 1


# ── GOLD ──────────────────────────────────────
var gold : BigNumber = BigNumber.new()
var gold_per_sec : BigNumber = BigNumber.new()
var gold_per_sec_multiplier : BigNumber = BigNumber.new()
var gold_miner_on_off : bool = false
var gold_miner_unlocked : bool = false
var gold_miner_upgrade_cost : BigNumber = BigNumber.new()
var gold_miner_upgrade_cost_multiplier : BigNumber = BigNumber.new()
var gold_pickaxe_level_req : int = 4

# ── COPPER ────────────────────────────────────
var copper : BigNumber = BigNumber.new()
var copper_per_sec : BigNumber = BigNumber.new()
var copper_per_sec_multiplier : BigNumber = BigNumber.new()
var copper_miner_on_off : bool = false
var copper_miner_unlocked : bool = false
var copper_miner_upgrade_cost : BigNumber = BigNumber.new()
var copper_miner_upgrade_cost_multiplier : BigNumber = BigNumber.new()
var copper_pickaxe_level_req : int = 3

# ── COAL ──────────────────────────────────────
var coal : BigNumber = BigNumber.new()
var coal_per_sec : BigNumber = BigNumber.new()
var coal_per_sec_multiplier : BigNumber = BigNumber.new()
var coal_miner_on_off : bool = false
var coal_miner_unlocked : bool = false
var coal_miner_upgrade_cost : BigNumber = BigNumber.new()
var coal_miner_upgrade_cost_multiplier : BigNumber = BigNumber.new()
var coal_pickaxe_level_req : int = 2

# ── IRON INGOT ────────────────────────────────
var iron_ingot : BigNumber = BigNumber.new()
var iron_ingot_per_sec : BigNumber = BigNumber.new()
var iron_ingot_per_sec_multiplier : BigNumber = BigNumber.new()
var iron_ingot_miner_on_off : bool = false
var iron_ingot_miner_unlocked : bool = false
var iron_ingot_miner_upgrade_cost : BigNumber = BigNumber.new()
var iron_ingot_miner_upgrade_cost_multiplier : BigNumber = BigNumber.new()
var iron_ingot_cost1 : BigNumber = BigNumber.new()

# ── copper ingot ────────────────────────────────
var copper_ingot : BigNumber = BigNumber.new()
var copper_ingot_per_sec : BigNumber = BigNumber.new()
var copper_ingot_per_sec_multiplier : BigNumber = BigNumber.new()
var copper_ingot_miner_on_off : bool = false
var copper_ingot_miner_unlocked : bool = false
var copper_ingot_miner_upgrade_cost : BigNumber = BigNumber.new()
var copper_ingot_miner_upgrade_cost_multiplier : BigNumber = BigNumber.new()
var copper_ingot_cost1 : BigNumber = BigNumber.new()

# ── gold INGOT ────────────────────────────────
var gold_ingot : BigNumber = BigNumber.new()
var gold_ingot_per_sec : BigNumber = BigNumber.new()
var gold_ingot_per_sec_multiplier : BigNumber = BigNumber.new()
var gold_ingot_miner_on_off : bool = false
var gold_ingot_miner_unlocked : bool = false
var gold_ingot_miner_upgrade_cost : BigNumber = BigNumber.new()
var gold_ingot_miner_upgrade_cost_multiplier : BigNumber = BigNumber.new()
var gold_ingot_cost1 : BigNumber = BigNumber.new()

# ── iron_screw ────────────────────────────────
var iron_screw : BigNumber = BigNumber.new()
var iron_screw_per_sec : BigNumber = BigNumber.new()
var iron_screw_per_sec_multiplier : BigNumber = BigNumber.new()
var iron_screw_miner_on_off : bool = false
var iron_screw_miner_unlocked : bool = false
var iron_screw_miner_upgrade_cost : BigNumber = BigNumber.new()
var iron_screw_miner_upgrade_cost_multiplier : BigNumber = BigNumber.new()
var iron_screw_cost1 : BigNumber = BigNumber.new()

# ── iron_plate ────────────────────────────────
var iron_plate : BigNumber = BigNumber.new()
var iron_plate_per_sec : BigNumber = BigNumber.new()
var iron_plate_per_sec_multiplier : BigNumber = BigNumber.new()
var iron_plate_miner_on_off : bool = false
var iron_plate_miner_unlocked : bool = false
var iron_plate_miner_upgrade_cost : BigNumber = BigNumber.new()
var iron_plate_miner_upgrade_cost_multiplier : BigNumber = BigNumber.new()
var iron_plate_cost1 : BigNumber = BigNumber.new()

# ── copper_wire ────────────────────────────────
var copper_wire : BigNumber = BigNumber.new()
var copper_wire_per_sec : BigNumber = BigNumber.new()
var copper_wire_per_sec_multiplier : BigNumber = BigNumber.new()
var copper_wire_miner_on_off : bool = false
var copper_wire_miner_unlocked : bool = false
var copper_wire_miner_upgrade_cost : BigNumber = BigNumber.new()
var copper_wire_miner_upgrade_cost_multiplier : BigNumber = BigNumber.new()
var copper_wire_cost1 : BigNumber = BigNumber.new()

# ── steel_ingot ────────────────────────────────
var steel_ingot : BigNumber = BigNumber.new()
var steel_ingot_per_sec : BigNumber = BigNumber.new()
var steel_ingot_per_sec_multiplier : BigNumber = BigNumber.new()
var steel_ingot_miner_on_off : bool = false
var steel_ingot_miner_unlocked : bool = false
var steel_ingot_miner_upgrade_cost : BigNumber = BigNumber.new()
var steel_ingot_miner_upgrade_cost_multiplier : BigNumber = BigNumber.new()
var steel_ingot_cost1 : BigNumber = BigNumber.new()
var steel_ingot_cost2 : BigNumber = BigNumber.new()

func _ready():
	
	#pickaxe_level.mantissa = 1.0
	#pickaxe_level.exponent = 0
	
	#pickaxe_click_multiplier.mantissa = 5.0
	#pickaxe_click_multiplier.exponent = 1
	
	coin.mantissa = 0.0
	coin.exponent = 0
	
	pickaxe_click_multiplier_cost.mantissa = 1.0
	pickaxe_click_multiplier_cost.exponent = 3
	
	pickaxe_upgradecost1.mantissa = 0.0
	pickaxe_upgradecost1.exponent = 0
	
	pickaxe_upgradecost2.mantissa = 0.0
	pickaxe_upgradecost2.exponent = 0
	
	pickaxe_upgradecost3.mantissa = 0.0
	pickaxe_upgradecost3.exponent = 0

	
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
	
	# ── copper INGOT ────────────────────────────────
	copper_ingot.mantissa = 0.0
	copper_ingot.exponent = 0
	
	copper_ingot_per_sec.mantissa = 1.0
	copper_ingot_per_sec.exponent = 0
	
	copper_ingot_per_sec_multiplier.mantissa = 1.1
	copper_ingot_per_sec_multiplier.exponent = 0
	
	copper_ingot_miner_upgrade_cost.mantissa = 1.0
	copper_ingot_miner_upgrade_cost.exponent = 2
	
	copper_ingot_miner_upgrade_cost_multiplier.mantissa = 1.1
	copper_ingot_miner_upgrade_cost_multiplier.exponent = 0
	
	copper_ingot_cost1.mantissa = 1.0
	copper_ingot_cost1.exponent = 0
	
	# ── gold_ingot ────────────────────────────────
	gold_ingot.mantissa = 0.0
	gold_ingot.exponent = 0
	
	gold_ingot_per_sec.mantissa = 1.0
	gold_ingot_per_sec.exponent = 0
	
	gold_ingot_per_sec_multiplier.mantissa = 1.1
	gold_ingot_per_sec_multiplier.exponent = 0
	
	gold_ingot_miner_upgrade_cost.mantissa = 1.0
	gold_ingot_miner_upgrade_cost.exponent = 2
	
	gold_ingot_miner_upgrade_cost_multiplier.mantissa = 1.1
	gold_ingot_miner_upgrade_cost_multiplier.exponent = 0
	
	gold_ingot_cost1.mantissa = 1.0
	gold_ingot_cost1.exponent = 0
	
	# ── iron_screw ────────────────────────────────
	iron_screw.mantissa = 0.0
	iron_screw.exponent = 0
	
	iron_screw_per_sec.mantissa = 1.0
	iron_screw_per_sec.exponent = 0
	
	iron_screw_per_sec_multiplier.mantissa = 1.1
	iron_screw_per_sec_multiplier.exponent = 0
	
	iron_screw_miner_upgrade_cost.mantissa = 1.0
	iron_screw_miner_upgrade_cost.exponent = 2
	
	iron_screw_miner_upgrade_cost_multiplier.mantissa = 1.1
	iron_screw_miner_upgrade_cost_multiplier.exponent = 0
	
	iron_screw_cost1.mantissa = 25.0
	iron_screw_cost1.exponent = -1
	
	# ── iron_plate ────────────────────────────────
	iron_plate.mantissa = 0.0
	iron_plate.exponent = 0
	
	iron_plate_per_sec.mantissa = 1.0
	iron_plate_per_sec.exponent = 0
	
	iron_plate_per_sec_multiplier.mantissa = 1.1
	iron_plate_per_sec_multiplier.exponent = 0
	
	iron_plate_miner_upgrade_cost.mantissa = 1.0
	iron_plate_miner_upgrade_cost.exponent = 2
	
	iron_plate_miner_upgrade_cost_multiplier.mantissa = 1.1
	iron_plate_miner_upgrade_cost_multiplier.exponent = 0
	
	iron_plate_cost1.mantissa = 1.0
	iron_plate_cost1.exponent = 0
	
	# ── copper_wire ────────────────────────────────
	copper_wire.mantissa = 0.0
	copper_wire.exponent = 0
	
	copper_wire_per_sec.mantissa = 1.0
	copper_wire_per_sec.exponent = 0
	
	copper_wire_per_sec_multiplier.mantissa = 1.1
	copper_wire_per_sec_multiplier.exponent = 0
	
	copper_wire_miner_upgrade_cost.mantissa = 1.0
	copper_wire_miner_upgrade_cost.exponent = 2
	
	copper_wire_miner_upgrade_cost_multiplier.mantissa = 1.1
	copper_wire_miner_upgrade_cost_multiplier.exponent = 0
	
	copper_wire_cost1.mantissa = 5.0
	copper_wire_cost1.exponent = -1
	
	# ── steel_ingot ────────────────────────────────
	steel_ingot.mantissa = 0.0
	steel_ingot.exponent = 0
	
	steel_ingot_per_sec.mantissa = 1.0
	steel_ingot_per_sec.exponent = 0
	
	steel_ingot_per_sec_multiplier.mantissa = 1.1
	steel_ingot_per_sec_multiplier.exponent = 0
	
	steel_ingot_miner_upgrade_cost.mantissa = 1.0
	steel_ingot_miner_upgrade_cost.exponent = 2
	
	steel_ingot_miner_upgrade_cost_multiplier.mantissa = 1.1
	steel_ingot_miner_upgrade_cost_multiplier.exponent = 0
	
	steel_ingot_cost1.mantissa = 1.0
	steel_ingot_cost1.exponent = 0
	
	steel_ingot_cost2.mantissa = 2.0
	steel_ingot_cost2.exponent = 0
