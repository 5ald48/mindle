extends Node


var pickaxe_level : int = 1
var pickaxe_click_multiplier : int = 1
var pickaxe_click_multiplier_cost : BigNumber = BigNumber.new()
var pickaxe_upgradecost1 : BigNumber = BigNumber.new()
var pickaxe_upgradecost2 : BigNumber = BigNumber.new()
var pickaxe_upgradecost3 : BigNumber = BigNumber.new()

var per_sec_multiplier : BigNumber = BigNumber.new()
var per_sec_multiplier_cost : BigNumber = BigNumber.new()
var per_sec_multiplier_cost_multiplier : BigNumber = BigNumber.new()
var per_sec_multiplier_multiplier : BigNumber = BigNumber.new()


var coin : BigNumber = BigNumber.new()
var pristage_coin : BigNumber = BigNumber.new()
var pristage_cost : BigNumber = BigNumber.new()
var pristage_lvl: BigNumber = BigNumber.new()


# ── IRON ──────────────────────────────────────
var iron : BigNumber = BigNumber.new()
var iron_per_sec : BigNumber = BigNumber.new()
var iron_miner_on_off : bool = false
var iron_miner_unlocked : bool = false
var iron_miner_upgrade_cost : BigNumber = BigNumber.new()
var iron_miner_upgrade_cost_multiplier : BigNumber = BigNumber.new()
var iron_pickaxe_level_req : int = 1
var iron_value : BigNumber = BigNumber.new()

# ── GOLD ──────────────────────────────────────
var gold : BigNumber = BigNumber.new()
var gold_per_sec : BigNumber = BigNumber.new()
var gold_miner_on_off : bool = false
var gold_miner_unlocked : bool = false
var gold_miner_upgrade_cost : BigNumber = BigNumber.new()
var gold_miner_upgrade_cost_multiplier : BigNumber = BigNumber.new()
var gold_pickaxe_level_req : int = 4
var gold_value : BigNumber = BigNumber.new()

# ── COPPER ────────────────────────────────────
var copper : BigNumber = BigNumber.new()
var copper_per_sec : BigNumber = BigNumber.new()
var copper_miner_on_off : bool = false
var copper_miner_unlocked : bool = false
var copper_miner_upgrade_cost : BigNumber = BigNumber.new()
var copper_miner_upgrade_cost_multiplier : BigNumber = BigNumber.new()
var copper_pickaxe_level_req : int = 3
var copper_value : BigNumber = BigNumber.new()

# ── COAL ──────────────────────────────────────
var coal : BigNumber = BigNumber.new()
var coal_per_sec : BigNumber = BigNumber.new()
var coal_miner_on_off : bool = false
var coal_miner_unlocked : bool = false
var coal_miner_upgrade_cost : BigNumber = BigNumber.new()
var coal_miner_upgrade_cost_multiplier : BigNumber = BigNumber.new()
var coal_pickaxe_level_req : int = 2
var coal_value : BigNumber = BigNumber.new()

# ── IRON INGOT ────────────────────────────────
var iron_ingot : BigNumber = BigNumber.new()
var iron_ingot_per_sec : BigNumber = BigNumber.new()
var iron_ingot_miner_on_off : bool = false
var iron_ingot_miner_unlocked : bool = false
var iron_ingot_miner_upgrade_cost : BigNumber = BigNumber.new()
var iron_ingot_miner_upgrade_cost_multiplier : BigNumber = BigNumber.new()
var iron_ingot_cost1 : BigNumber = BigNumber.new()
var iron_ingot_value : BigNumber = BigNumber.new()

# ── COPPER INGOT ────────────────────────────────
var copper_ingot : BigNumber = BigNumber.new()
var copper_ingot_per_sec : BigNumber = BigNumber.new()
var copper_ingot_miner_on_off : bool = false
var copper_ingot_miner_unlocked : bool = false
var copper_ingot_miner_upgrade_cost : BigNumber = BigNumber.new()
var copper_ingot_miner_upgrade_cost_multiplier : BigNumber = BigNumber.new()
var copper_ingot_cost1 : BigNumber = BigNumber.new()
var copper_ingot_value : BigNumber = BigNumber.new()

# ── GOLD INGOT ────────────────────────────────
var gold_ingot : BigNumber = BigNumber.new()
var gold_ingot_per_sec : BigNumber = BigNumber.new()
var gold_ingot_miner_on_off : bool = false
var gold_ingot_miner_unlocked : bool = false
var gold_ingot_miner_upgrade_cost : BigNumber = BigNumber.new()
var gold_ingot_miner_upgrade_cost_multiplier : BigNumber = BigNumber.new()
var gold_ingot_cost1 : BigNumber = BigNumber.new()
var gold_ingot_value : BigNumber = BigNumber.new()

# ── IRON SCREW ────────────────────────────────
var iron_screw : BigNumber = BigNumber.new()
var iron_screw_per_sec : BigNumber = BigNumber.new()
var iron_screw_miner_on_off : bool = false
var iron_screw_miner_unlocked : bool = false
var iron_screw_miner_upgrade_cost : BigNumber = BigNumber.new()
var iron_screw_miner_upgrade_cost_multiplier : BigNumber = BigNumber.new()
var iron_screw_cost1 : BigNumber = BigNumber.new()
var iron_screw_value : BigNumber = BigNumber.new()

# ── IRON PLATE ────────────────────────────────
var iron_plate : BigNumber = BigNumber.new()
var iron_plate_per_sec : BigNumber = BigNumber.new()
var iron_plate_miner_on_off : bool = false
var iron_plate_miner_unlocked : bool = false
var iron_plate_miner_upgrade_cost : BigNumber = BigNumber.new()
var iron_plate_miner_upgrade_cost_multiplier : BigNumber = BigNumber.new()
var iron_plate_cost1 : BigNumber = BigNumber.new()
var iron_plate_value : BigNumber = BigNumber.new()

# ── COPPER WIRE ────────────────────────────────
var copper_wire : BigNumber = BigNumber.new()
var copper_wire_per_sec : BigNumber = BigNumber.new()
var copper_wire_miner_on_off : bool = false
var copper_wire_miner_unlocked : bool = false
var copper_wire_miner_upgrade_cost : BigNumber = BigNumber.new()
var copper_wire_miner_upgrade_cost_multiplier : BigNumber = BigNumber.new()
var copper_wire_cost1 : BigNumber = BigNumber.new()
var copper_wire_value : BigNumber = BigNumber.new()

# ── STEEL INGOT ────────────────────────────────
var steel_ingot : BigNumber = BigNumber.new()
var steel_ingot_per_sec : BigNumber = BigNumber.new()
var steel_ingot_miner_on_off : bool = false
var steel_ingot_miner_unlocked : bool = false
var steel_ingot_miner_upgrade_cost : BigNumber = BigNumber.new()
var steel_ingot_miner_upgrade_cost_multiplier : BigNumber = BigNumber.new()
var steel_ingot_cost1 : BigNumber = BigNumber.new()
var steel_ingot_cost2 : BigNumber = BigNumber.new()
var steel_ingot_value : BigNumber = BigNumber.new()

# ── SAND ──────────────────────────────────────
var sand : BigNumber = BigNumber.new()
var sand_per_sec : BigNumber = BigNumber.new()
var sand_miner_on_off : bool = false
var sand_miner_unlocked : bool = false
var sand_miner_upgrade_cost : BigNumber = BigNumber.new()
var sand_miner_upgrade_cost_multiplier : BigNumber = BigNumber.new()
var sand_pickaxe_level_req : int = 1
var sand_value : BigNumber = BigNumber.new()

# ── GLASS ────────────────────────────────
var glass : BigNumber = BigNumber.new()
var glass_per_sec : BigNumber = BigNumber.new()
var glass_miner_on_off : bool = false
var glass_miner_unlocked : bool = false
var glass_miner_upgrade_cost : BigNumber = BigNumber.new()
var glass_miner_upgrade_cost_multiplier : BigNumber = BigNumber.new()
var glass_cost1 : BigNumber = BigNumber.new()
var glass_value : BigNumber = BigNumber.new()

# ── STEEL GEAR ────────────────────────────────
var steel_gear : BigNumber = BigNumber.new()
var steel_gear_per_sec : BigNumber = BigNumber.new()
var steel_gear_miner_on_off : bool = false
var steel_gear_miner_unlocked : bool = false
var steel_gear_miner_upgrade_cost : BigNumber = BigNumber.new()
var steel_gear_miner_upgrade_cost_multiplier : BigNumber = BigNumber.new()
var steel_gear_cost1 : BigNumber = BigNumber.new()
var steel_gear_cost2 : BigNumber = BigNumber.new()
var steel_gear_value : BigNumber = BigNumber.new()

# ── GOLD WIRE ────────────────────────────────
var gold_wire : BigNumber = BigNumber.new()
var gold_wire_per_sec : BigNumber = BigNumber.new()
var gold_wire_miner_on_off : bool = false
var gold_wire_miner_unlocked : bool = false
var gold_wire_miner_upgrade_cost : BigNumber = BigNumber.new()
var gold_wire_miner_upgrade_cost_multiplier : BigNumber = BigNumber.new()
var gold_wire_cost1 : BigNumber = BigNumber.new()
var gold_wire_value : BigNumber = BigNumber.new()

# ── CIRCUIT BOARD ────────────────────────────────
var circuit_board : BigNumber = BigNumber.new()
var circuit_board_per_sec : BigNumber = BigNumber.new()
var circuit_board_miner_on_off : bool = false
var circuit_board_miner_unlocked : bool = false
var circuit_board_miner_upgrade_cost : BigNumber = BigNumber.new()
var circuit_board_miner_upgrade_cost_multiplier : BigNumber = BigNumber.new()
var circuit_board_cost1 : BigNumber = BigNumber.new()
var circuit_board_cost2 : BigNumber = BigNumber.new()
var circuit_board_cost3 : BigNumber = BigNumber.new()
var circuit_board_value : BigNumber = BigNumber.new()


func _ready() -> void:
	reset()
	
	pristage_coin.mantissa = 0.0
	pristage_coin.exponent = 0
	
	pristage_lvl.mantissa = 0.0
	pristage_lvl.exponent = 0


	
	per_sec_multiplier.mantissa = 1.1
	per_sec_multiplier.exponent = 0
	
	per_sec_multiplier_cost.mantissa = 1.0
	per_sec_multiplier_cost.exponent = 6

 

func reset():
	
	coin.mantissa = 0.0
	coin.exponent = 0
	

	pristage_cost.mantissa = 1.0
	pristage_cost.exponent = 6
	


	pickaxe_click_multiplier_cost.mantissa = 1.0
	pickaxe_click_multiplier_cost.exponent = 3

	pickaxe_upgradecost1.mantissa = 0.0
	pickaxe_upgradecost1.exponent = 0

	pickaxe_upgradecost2.mantissa = 0.0
	pickaxe_upgradecost2.exponent = 0

	pickaxe_upgradecost3.mantissa = 0.0
	pickaxe_upgradecost3.exponent = 0
	
	pickaxe_level  = 1
	pickaxe_click_multiplier  = 1
	
	per_sec_multiplier_cost_multiplier.mantissa = 1.1
	per_sec_multiplier_cost_multiplier.exponent = 0
	
	per_sec_multiplier_multiplier.mantissa = 1.01
	per_sec_multiplier_multiplier.exponent = 0



	# ── IRON ──────────────────────────────────────
	iron.mantissa = 0.0
	iron.exponent = 0

	iron_per_sec.mantissa = 1.0
	iron_per_sec.exponent = 0

	iron_miner_upgrade_cost.mantissa = 1.0
	iron_miner_upgrade_cost.exponent = 2

	iron_miner_upgrade_cost_multiplier.mantissa = 1.1
	iron_miner_upgrade_cost_multiplier.exponent = 0

	iron_value.mantissa = 1.0
	iron_value.exponent = 0
	
	iron_miner_on_off = false
	iron_miner_unlocked = false

	# ── GOLD ──────────────────────────────────────
	gold.mantissa = 0.0
	gold.exponent = 0

	gold_per_sec.mantissa = 1.0
	gold_per_sec.exponent = 0

	gold_miner_upgrade_cost.mantissa = 1.0
	gold_miner_upgrade_cost.exponent = 2

	gold_miner_upgrade_cost_multiplier.mantissa = 1.1
	gold_miner_upgrade_cost_multiplier.exponent = 0

	gold_value.mantissa = 4.0
	gold_value.exponent = 0

	gold_miner_on_off = false
	gold_miner_unlocked = false

	# ── COPPER ────────────────────────────────────
	copper.mantissa = 0.0
	copper.exponent = 0

	copper_per_sec.mantissa = 1.0
	copper_per_sec.exponent = 0

	copper_miner_upgrade_cost.mantissa = 1.0
	copper_miner_upgrade_cost.exponent = 2

	copper_miner_upgrade_cost_multiplier.mantissa = 1.1
	copper_miner_upgrade_cost_multiplier.exponent = 0

	copper_value.mantissa = 3.0
	copper_value.exponent = 0
	
	copper_miner_on_off = false
	copper_miner_unlocked = false


	# ── COAL ──────────────────────────────────────
	coal.mantissa = 0.0
	coal.exponent = 0

	coal_per_sec.mantissa = 1.0
	coal_per_sec.exponent = 0

	coal_miner_upgrade_cost.mantissa = 1.0
	coal_miner_upgrade_cost.exponent = 2

	coal_miner_upgrade_cost_multiplier.mantissa = 1.1
	coal_miner_upgrade_cost_multiplier.exponent = 0

	coal_value.mantissa = 2.0
	coal_value.exponent = 0
	
	coal_miner_on_off = false
	coal_miner_unlocked = false

	# ── IRON INGOT ────────────────────────────────
	iron_ingot.mantissa = 0.0
	iron_ingot.exponent = 0

	iron_ingot_per_sec.mantissa = 1.0
	iron_ingot_per_sec.exponent = 0

	iron_ingot_miner_upgrade_cost.mantissa = 1.0
	iron_ingot_miner_upgrade_cost.exponent = 2

	iron_ingot_miner_upgrade_cost_multiplier.mantissa = 1.1
	iron_ingot_miner_upgrade_cost_multiplier.exponent = 0

	iron_ingot_cost1.mantissa = 1.0
	iron_ingot_cost1.exponent = 0

	iron_ingot_value.mantissa = 2.0
	iron_ingot_value.exponent = 0
	
	iron_ingot_miner_on_off = false
	iron_ingot_miner_unlocked = false

	# ── COPPER INGOT ────────────────────────────────
	copper_ingot.mantissa = 0.0
	copper_ingot.exponent = 0

	copper_ingot_per_sec.mantissa = 1.0
	copper_ingot_per_sec.exponent = 0

	copper_ingot_miner_upgrade_cost.mantissa = 1.0
	copper_ingot_miner_upgrade_cost.exponent = 2

	copper_ingot_miner_upgrade_cost_multiplier.mantissa = 1.1
	copper_ingot_miner_upgrade_cost_multiplier.exponent = 0

	copper_ingot_cost1.mantissa = 1.0
	copper_ingot_cost1.exponent = 0

	copper_ingot_value.mantissa = 5.0
	copper_ingot_value.exponent = 0
	
	copper_ingot_miner_on_off = false
	copper_ingot_miner_unlocked = false

	# ── GOLD INGOT ────────────────────────────────
	gold_ingot.mantissa = 0.0
	gold_ingot.exponent = 0

	gold_ingot_per_sec.mantissa = 1.0
	gold_ingot_per_sec.exponent = 0

	gold_ingot_miner_upgrade_cost.mantissa = 1.0
	gold_ingot_miner_upgrade_cost.exponent = 2

	gold_ingot_miner_upgrade_cost_multiplier.mantissa = 1.1
	gold_ingot_miner_upgrade_cost_multiplier.exponent = 0

	gold_ingot_cost1.mantissa = 1.0
	gold_ingot_cost1.exponent = 0

	gold_ingot_value.mantissa = 6.0
	gold_ingot_value.exponent = 0
	
	gold_ingot_miner_on_off = false
	gold_ingot_miner_unlocked = false


	# ── IRON SCREW ────────────────────────────────
	iron_screw.mantissa = 0.0
	iron_screw.exponent = 0

	iron_screw_per_sec.mantissa = 1.0
	iron_screw_per_sec.exponent = 0

	iron_screw_miner_upgrade_cost.mantissa = 1.0
	iron_screw_miner_upgrade_cost.exponent = 2

	iron_screw_miner_upgrade_cost_multiplier.mantissa = 1.1
	iron_screw_miner_upgrade_cost_multiplier.exponent = 0

	iron_screw_cost1.mantissa = 25.0
	iron_screw_cost1.exponent = -1

	iron_screw_value.mantissa = 1.0
	iron_screw_value.exponent = 0
	
	iron_screw_miner_on_off = false
	iron_screw_miner_unlocked = false


	# ── IRON PLATE ────────────────────────────────
	iron_plate.mantissa = 0.0
	iron_plate.exponent = 0

	iron_plate_per_sec.mantissa = 1.0
	iron_plate_per_sec.exponent = 0

	iron_plate_miner_upgrade_cost.mantissa = 1.0
	iron_plate_miner_upgrade_cost.exponent = 2

	iron_plate_miner_upgrade_cost_multiplier.mantissa = 1.1
	iron_plate_miner_upgrade_cost_multiplier.exponent = 0

	iron_plate_cost1.mantissa = 1.0
	iron_plate_cost1.exponent = 0

	iron_plate_value.mantissa = 3.0
	iron_plate_value.exponent = 0
	
	iron_plate_miner_on_off = false
	iron_plate_miner_unlocked = false


	# ── COPPER WIRE ────────────────────────────────
	copper_wire.mantissa = 0.0
	copper_wire.exponent = 0

	copper_wire_per_sec.mantissa = 1.0
	copper_wire_per_sec.exponent = 0

	copper_wire_miner_upgrade_cost.mantissa = 1.0
	copper_wire_miner_upgrade_cost.exponent = 2

	copper_wire_miner_upgrade_cost_multiplier.mantissa = 1.1
	copper_wire_miner_upgrade_cost_multiplier.exponent = 0

	copper_wire_cost1.mantissa = 5.0
	copper_wire_cost1.exponent = -1

	copper_wire_value.mantissa = 1.0
	copper_wire_value.exponent = 0
	
	copper_wire_miner_on_off = false
	copper_wire_miner_unlocked = false

	# ── STEEL INGOT ────────────────────────────────
	steel_ingot.mantissa = 0.0
	steel_ingot.exponent = 0

	steel_ingot_per_sec.mantissa = 1.0
	steel_ingot_per_sec.exponent = 0

	steel_ingot_miner_upgrade_cost.mantissa = 1.0
	steel_ingot_miner_upgrade_cost.exponent = 2

	steel_ingot_miner_upgrade_cost_multiplier.mantissa = 1.1
	steel_ingot_miner_upgrade_cost_multiplier.exponent = 0

	steel_ingot_cost1.mantissa = 1.0
	steel_ingot_cost1.exponent = 0

	steel_ingot_cost2.mantissa = 2.0
	steel_ingot_cost2.exponent = 0

	steel_ingot_value.mantissa = 9.0
	steel_ingot_value.exponent = 0
	
	steel_ingot_miner_on_off = false
	steel_ingot_miner_unlocked = false

	# ── SAND ──────────────────────────────────────
	sand.mantissa = 0.0
	sand.exponent = 0

	sand_per_sec.mantissa = 1.0
	sand_per_sec.exponent = 0

	sand_miner_upgrade_cost.mantissa = 1.0
	sand_miner_upgrade_cost.exponent = 2

	sand_miner_upgrade_cost_multiplier.mantissa = 1.1
	sand_miner_upgrade_cost_multiplier.exponent = 0

	sand_value.mantissa = 1.0
	sand_value.exponent = 0
	
	sand_miner_on_off = false
	sand_miner_unlocked = false

	# ── GLASS ────────────────────────────────
	glass.mantissa = 0.0
	glass.exponent = 0

	glass_per_sec.mantissa = 1.0
	glass_per_sec.exponent = 0

	glass_miner_upgrade_cost.mantissa = 1.0
	glass_miner_upgrade_cost.exponent = 2

	glass_miner_upgrade_cost_multiplier.mantissa = 1.1
	glass_miner_upgrade_cost_multiplier.exponent = 0

	glass_cost1.mantissa = 3.0
	glass_cost1.exponent = 0

	glass_value.mantissa = 5.0
	glass_value.exponent = 0
	
	glass_miner_on_off = false
	glass_miner_unlocked = false

	# ── STEEL GEAR ────────────────────────────────
	steel_gear.mantissa = 0.0
	steel_gear.exponent = 0

	steel_gear_per_sec.mantissa = 1.0
	steel_gear_per_sec.exponent = 0

	steel_gear_miner_upgrade_cost.mantissa = 1.0
	steel_gear_miner_upgrade_cost.exponent = 2

	steel_gear_miner_upgrade_cost_multiplier.mantissa = 1.1
	steel_gear_miner_upgrade_cost_multiplier.exponent = 0

	steel_gear_cost1.mantissa = 1.0
	steel_gear_cost1.exponent = 0

	steel_gear_cost2.mantissa = 2.0
	steel_gear_cost2.exponent = 0

	steel_gear_value.mantissa = 1.5
	steel_gear_value.exponent = 1
	
	steel_gear_miner_on_off = false
	steel_gear_miner_unlocked = false


	# ── GOLD WIRE ────────────────────────────────
	gold_wire.mantissa = 0.0
	gold_wire.exponent = 0

	gold_wire_per_sec.mantissa = 1.0
	gold_wire_per_sec.exponent = 0

	gold_wire_miner_upgrade_cost.mantissa = 1.0
	gold_wire_miner_upgrade_cost.exponent = 2

	gold_wire_miner_upgrade_cost_multiplier.mantissa = 1.1
	gold_wire_miner_upgrade_cost_multiplier.exponent = 0

	gold_wire_cost1.mantissa = 2.0
	gold_wire_cost1.exponent = 0

	gold_wire_value.mantissa = 8.0
	gold_wire_value.exponent = 0
	
	gold_wire_miner_on_off = false
	gold_wire_miner_unlocked = false

	# ── CIRCUIT BOARD ────────────────────────────────
	circuit_board.mantissa = 0.0
	circuit_board.exponent = 0

	circuit_board_per_sec.mantissa = 1.0
	circuit_board_per_sec.exponent = 0

	circuit_board_miner_upgrade_cost.mantissa = 1.0
	circuit_board_miner_upgrade_cost.exponent = 2

	circuit_board_miner_upgrade_cost_multiplier.mantissa = 1.1
	circuit_board_miner_upgrade_cost_multiplier.exponent = 0

	circuit_board_cost1.mantissa = 2.0
	circuit_board_cost1.exponent = 0

	circuit_board_cost2.mantissa = 1.0
	circuit_board_cost2.exponent = 0

	circuit_board_cost3.mantissa = 1.0
	circuit_board_cost3.exponent = 0

	circuit_board_value.mantissa = 1.5
	circuit_board_value.exponent = 1
	
	circuit_board_miner_on_off = false
	circuit_board_miner_unlocked = false
	
	

var resource_array = [
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
