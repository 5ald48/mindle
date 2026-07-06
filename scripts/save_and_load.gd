extends Node

func _ready() -> void:
	pass
	load_game()
	
	

var save_timer : float = 0.0

func _process(delta):
	save_timer += delta
	if save_timer >= 300.0:  
		save()
		save_timer = 0.0



func get_save_data() -> Dictionary:
	return {
		# PICKAXE
		"pickaxe_level": Gamedata.pickaxe_level,
		"pickaxe_click_multiplier": Gamedata.pickaxe_click_multiplier,
		"per_sec_multiplier": {"m": Gamedata.per_sec_multiplier.mantissa, "e": Gamedata.per_sec_multiplier.exponent},
		"pickaxe_click_multiplier_cost": {"m": Gamedata.pickaxe_click_multiplier_cost.mantissa, "e": Gamedata.pickaxe_click_multiplier_cost.exponent},
		
		# COIN
		"coin": {"m": Gamedata.coin.mantissa, "e": Gamedata.coin.exponent},
		"pristage_coin": {"m": Gamedata.pristage_coin.mantissa, "e": Gamedata.pristage_coin.exponent},
		"pristage_cost": {"m": Gamedata.pristage_cost.mantissa, "e": Gamedata.pristage_cost.exponent},
		"pristage_lvl": {"m": Gamedata.pristage_lvl.mantissa, "e": Gamedata.pristage_lvl.exponent},
		
		# IRON
		"iron": {"m": Gamedata.iron.mantissa, "e": Gamedata.iron.exponent},
		"iron_per_sec": {"m": Gamedata.iron_per_sec.mantissa, "e": Gamedata.iron_per_sec.exponent},
		"iron_miner_on_off": Gamedata.iron_miner_on_off,
		"iron_miner_unlocked": Gamedata.iron_miner_unlocked,
		"iron_miner_upgrade_cost": {"m": Gamedata.iron_miner_upgrade_cost.mantissa, "e": Gamedata.iron_miner_upgrade_cost.exponent},
		
		# GOLD
		"gold": {"m": Gamedata.gold.mantissa, "e": Gamedata.gold.exponent},
		"gold_per_sec": {"m": Gamedata.gold_per_sec.mantissa, "e": Gamedata.gold_per_sec.exponent},
		"gold_miner_on_off": Gamedata.gold_miner_on_off,
		"gold_miner_unlocked": Gamedata.gold_miner_unlocked,
		"gold_miner_upgrade_cost": {"m": Gamedata.gold_miner_upgrade_cost.mantissa, "e": Gamedata.gold_miner_upgrade_cost.exponent},
		
		# COPPER
		"copper": {"m": Gamedata.copper.mantissa, "e": Gamedata.copper.exponent},
		"copper_per_sec": {"m": Gamedata.copper_per_sec.mantissa, "e": Gamedata.copper_per_sec.exponent},
		"copper_miner_on_off": Gamedata.copper_miner_on_off,
		"copper_miner_unlocked": Gamedata.copper_miner_unlocked,
		"copper_miner_upgrade_cost": {"m": Gamedata.copper_miner_upgrade_cost.mantissa, "e": Gamedata.copper_miner_upgrade_cost.exponent},
		
		# COAL
		"coal": {"m": Gamedata.coal.mantissa, "e": Gamedata.coal.exponent},
		"coal_per_sec": {"m": Gamedata.coal_per_sec.mantissa, "e": Gamedata.coal_per_sec.exponent},
		"coal_miner_on_off": Gamedata.coal_miner_on_off,
		"coal_miner_unlocked": Gamedata.coal_miner_unlocked,
		"coal_miner_upgrade_cost": {"m": Gamedata.coal_miner_upgrade_cost.mantissa, "e": Gamedata.coal_miner_upgrade_cost.exponent},
		
		# SAND
		"sand": {"m": Gamedata.sand.mantissa, "e": Gamedata.sand.exponent},
		"sand_per_sec": {"m": Gamedata.sand_per_sec.mantissa, "e": Gamedata.sand_per_sec.exponent},
		"sand_miner_on_off": Gamedata.sand_miner_on_off,
		"sand_miner_unlocked": Gamedata.sand_miner_unlocked,
		"sand_miner_upgrade_cost": {"m": Gamedata.sand_miner_upgrade_cost.mantissa, "e": Gamedata.sand_miner_upgrade_cost.exponent},
		
		# IRON INGOT
		"iron_ingot": {"m": Gamedata.iron_ingot.mantissa, "e": Gamedata.iron_ingot.exponent},
		"iron_ingot_per_sec": {"m": Gamedata.iron_ingot_per_sec.mantissa, "e": Gamedata.iron_ingot_per_sec.exponent},
		"iron_ingot_miner_on_off": Gamedata.iron_ingot_miner_on_off,
		"iron_ingot_miner_unlocked": Gamedata.iron_ingot_miner_unlocked,
		"iron_ingot_miner_upgrade_cost": {"m": Gamedata.iron_ingot_miner_upgrade_cost.mantissa, "e": Gamedata.iron_ingot_miner_upgrade_cost.exponent},
		
		# COPPER INGOT
		"copper_ingot": {"m": Gamedata.copper_ingot.mantissa, "e": Gamedata.copper_ingot.exponent},
		"copper_ingot_per_sec": {"m": Gamedata.copper_ingot_per_sec.mantissa, "e": Gamedata.copper_ingot_per_sec.exponent},
		"copper_ingot_miner_on_off": Gamedata.copper_ingot_miner_on_off,
		"copper_ingot_miner_unlocked": Gamedata.copper_ingot_miner_unlocked,
		"copper_ingot_miner_upgrade_cost": {"m": Gamedata.copper_ingot_miner_upgrade_cost.mantissa, "e": Gamedata.copper_ingot_miner_upgrade_cost.exponent},
		
		# GOLD INGOT
		"gold_ingot": {"m": Gamedata.gold_ingot.mantissa, "e": Gamedata.gold_ingot.exponent},
		"gold_ingot_per_sec": {"m": Gamedata.gold_ingot_per_sec.mantissa, "e": Gamedata.gold_ingot_per_sec.exponent},
		"gold_ingot_miner_on_off": Gamedata.gold_ingot_miner_on_off,
		"gold_ingot_miner_unlocked": Gamedata.gold_ingot_miner_unlocked,
		"gold_ingot_miner_upgrade_cost": {"m": Gamedata.gold_ingot_miner_upgrade_cost.mantissa, "e": Gamedata.gold_ingot_miner_upgrade_cost.exponent},
		
		# IRON SCREW
		"iron_screw": {"m": Gamedata.iron_screw.mantissa, "e": Gamedata.iron_screw.exponent},
		"iron_screw_per_sec": {"m": Gamedata.iron_screw_per_sec.mantissa, "e": Gamedata.iron_screw_per_sec.exponent},
		"iron_screw_miner_on_off": Gamedata.iron_screw_miner_on_off,
		"iron_screw_miner_unlocked": Gamedata.iron_screw_miner_unlocked,
		"iron_screw_miner_upgrade_cost": {"m": Gamedata.iron_screw_miner_upgrade_cost.mantissa, "e": Gamedata.iron_screw_miner_upgrade_cost.exponent},
		
		# IRON PLATE
		"iron_plate": {"m": Gamedata.iron_plate.mantissa, "e": Gamedata.iron_plate.exponent},
		"iron_plate_per_sec": {"m": Gamedata.iron_plate_per_sec.mantissa, "e": Gamedata.iron_plate_per_sec.exponent},
		"iron_plate_miner_on_off": Gamedata.iron_plate_miner_on_off,
		"iron_plate_miner_unlocked": Gamedata.iron_plate_miner_unlocked,
		"iron_plate_miner_upgrade_cost": {"m": Gamedata.iron_plate_miner_upgrade_cost.mantissa, "e": Gamedata.iron_plate_miner_upgrade_cost.exponent},
		
		# COPPER WIRE
		"copper_wire": {"m": Gamedata.copper_wire.mantissa, "e": Gamedata.copper_wire.exponent},
		"copper_wire_per_sec": {"m": Gamedata.copper_wire_per_sec.mantissa, "e": Gamedata.copper_wire_per_sec.exponent},
		"copper_wire_miner_on_off": Gamedata.copper_wire_miner_on_off,
		"copper_wire_miner_unlocked": Gamedata.copper_wire_miner_unlocked,
		"copper_wire_miner_upgrade_cost": {"m": Gamedata.copper_wire_miner_upgrade_cost.mantissa, "e": Gamedata.copper_wire_miner_upgrade_cost.exponent},
		
		# STEEL INGOT
		"steel_ingot": {"m": Gamedata.steel_ingot.mantissa, "e": Gamedata.steel_ingot.exponent},
		"steel_ingot_per_sec": {"m": Gamedata.steel_ingot_per_sec.mantissa, "e": Gamedata.steel_ingot_per_sec.exponent},
		"steel_ingot_miner_on_off": Gamedata.steel_ingot_miner_on_off,
		"steel_ingot_miner_unlocked": Gamedata.steel_ingot_miner_unlocked,
		"steel_ingot_miner_upgrade_cost": {"m": Gamedata.steel_ingot_miner_upgrade_cost.mantissa, "e": Gamedata.steel_ingot_miner_upgrade_cost.exponent},
		
		# GLASS
		"glass": {"m": Gamedata.glass.mantissa, "e": Gamedata.glass.exponent},
		"glass_per_sec": {"m": Gamedata.glass_per_sec.mantissa, "e": Gamedata.glass_per_sec.exponent},
		"glass_miner_on_off": Gamedata.glass_miner_on_off,
		"glass_miner_unlocked": Gamedata.glass_miner_unlocked,
		"glass_miner_upgrade_cost": {"m": Gamedata.glass_miner_upgrade_cost.mantissa, "e": Gamedata.glass_miner_upgrade_cost.exponent},
		
		# STEEL GEAR
		"steel_gear": {"m": Gamedata.steel_gear.mantissa, "e": Gamedata.steel_gear.exponent},
		"steel_gear_per_sec": {"m": Gamedata.steel_gear_per_sec.mantissa, "e": Gamedata.steel_gear_per_sec.exponent},
		"steel_gear_miner_on_off": Gamedata.steel_gear_miner_on_off,
		"steel_gear_miner_unlocked": Gamedata.steel_gear_miner_unlocked,
		"steel_gear_miner_upgrade_cost": {"m": Gamedata.steel_gear_miner_upgrade_cost.mantissa, "e": Gamedata.steel_gear_miner_upgrade_cost.exponent},
		
		# GOLD WIRE
		"gold_wire": {"m": Gamedata.gold_wire.mantissa, "e": Gamedata.gold_wire.exponent},
		"gold_wire_per_sec": {"m": Gamedata.gold_wire_per_sec.mantissa, "e": Gamedata.gold_wire_per_sec.exponent},
		"gold_wire_miner_on_off": Gamedata.gold_wire_miner_on_off,
		"gold_wire_miner_unlocked": Gamedata.gold_wire_miner_unlocked,
		"gold_wire_miner_upgrade_cost": {"m": Gamedata.gold_wire_miner_upgrade_cost.mantissa, "e": Gamedata.gold_wire_miner_upgrade_cost.exponent},
		
		# CIRCUIT BOARD
		"circuit_board": {"m": Gamedata.circuit_board.mantissa, "e": Gamedata.circuit_board.exponent},
		"circuit_board_per_sec": {"m": Gamedata.circuit_board_per_sec.mantissa, "e": Gamedata.circuit_board_per_sec.exponent},
		"circuit_board_miner_on_off": Gamedata.circuit_board_miner_on_off,
		"circuit_board_miner_unlocked": Gamedata.circuit_board_miner_unlocked,
		"circuit_board_miner_upgrade_cost": {"m": Gamedata.circuit_board_miner_upgrade_cost.mantissa, "e": Gamedata.circuit_board_miner_upgrade_cost.exponent},
	}


func save():
	var file = FileAccess.open("user://MINDLE_savefile.json", FileAccess.WRITE)
	file.store_string(JSON.stringify(get_save_data()))
	file.close()


func load_game():
	if not FileAccess.file_exists("user://MINDLE_savefile.json"):
		return
	
	var file = FileAccess.open("user://MINDLE_savefile.json", FileAccess.READ)
	var data = JSON.parse_string(file.get_as_text())
	file.close()
	
	# PICKAXE
	Gamedata.pickaxe_level = data["pickaxe_level"]
	Gamedata.pickaxe_click_multiplier = data["pickaxe_click_multiplier"]
	Gamedata.per_sec_multiplier.mantissa = data["per_sec_multiplier"]["m"]; Gamedata.per_sec_multiplier.exponent = data["per_sec_multiplier"]["e"]
	Gamedata.pickaxe_click_multiplier_cost.mantissa = data["pickaxe_click_multiplier_cost"]["m"]; Gamedata.pickaxe_click_multiplier_cost.exponent = data["pickaxe_click_multiplier_cost"]["e"]
	
	# COIN
	Gamedata.coin.mantissa = data["coin"]["m"]; Gamedata.coin.exponent = data["coin"]["e"]
	if data.has("pristage_coin"):
		Gamedata.pristage_coin.mantissa = data["pristage_coin"]["m"]
		Gamedata.pristage_coin.exponent = data["pristage_coin"]["e"]

	if data.has("pristage_cost"):
		Gamedata.pristage_cost.mantissa = data["pristage_cost"]["m"]
		Gamedata.pristage_cost.exponent = data["pristage_cost"]["e"]

	if data.has("pristage_lvl"):
		Gamedata.pristage_lvl.mantissa = data["pristage_lvl"]["m"]
		Gamedata.pristage_lvl.exponent = data["pristage_lvl"]["e"]
	
	# IRON
	Gamedata.iron.mantissa = data["iron"]["m"]; Gamedata.iron.exponent = data["iron"]["e"]
	Gamedata.iron_per_sec.mantissa = data["iron_per_sec"]["m"]; Gamedata.iron_per_sec.exponent = data["iron_per_sec"]["e"]
	Gamedata.iron_miner_on_off = data["iron_miner_on_off"]
	Gamedata.iron_miner_unlocked = data["iron_miner_unlocked"]
	Gamedata.iron_miner_upgrade_cost.mantissa = data["iron_miner_upgrade_cost"]["m"]; Gamedata.iron_miner_upgrade_cost.exponent = data["iron_miner_upgrade_cost"]["e"]
	
	# GOLD
	Gamedata.gold.mantissa = data["gold"]["m"]; Gamedata.gold.exponent = data["gold"]["e"]
	Gamedata.gold_per_sec.mantissa = data["gold_per_sec"]["m"]; Gamedata.gold_per_sec.exponent = data["gold_per_sec"]["e"]
	Gamedata.gold_miner_on_off = data["gold_miner_on_off"]
	Gamedata.gold_miner_unlocked = data["gold_miner_unlocked"]
	Gamedata.gold_miner_upgrade_cost.mantissa = data["gold_miner_upgrade_cost"]["m"]; Gamedata.gold_miner_upgrade_cost.exponent = data["gold_miner_upgrade_cost"]["e"]
	
	# COPPER
	Gamedata.copper.mantissa = data["copper"]["m"]; Gamedata.copper.exponent = data["copper"]["e"]
	Gamedata.copper_per_sec.mantissa = data["copper_per_sec"]["m"]; Gamedata.copper_per_sec.exponent = data["copper_per_sec"]["e"]
	Gamedata.copper_miner_on_off = data["copper_miner_on_off"]
	Gamedata.copper_miner_unlocked = data["copper_miner_unlocked"]
	Gamedata.copper_miner_upgrade_cost.mantissa = data["copper_miner_upgrade_cost"]["m"]; Gamedata.copper_miner_upgrade_cost.exponent = data["copper_miner_upgrade_cost"]["e"]
	
	# COAL
	Gamedata.coal.mantissa = data["coal"]["m"]; Gamedata.coal.exponent = data["coal"]["e"]
	Gamedata.coal_per_sec.mantissa = data["coal_per_sec"]["m"]; Gamedata.coal_per_sec.exponent = data["coal_per_sec"]["e"]
	Gamedata.coal_miner_on_off = data["coal_miner_on_off"]
	Gamedata.coal_miner_unlocked = data["coal_miner_unlocked"]
	Gamedata.coal_miner_upgrade_cost.mantissa = data["coal_miner_upgrade_cost"]["m"]; Gamedata.coal_miner_upgrade_cost.exponent = data["coal_miner_upgrade_cost"]["e"]
	
	# SAND
	Gamedata.sand.mantissa = data["sand"]["m"]; Gamedata.sand.exponent = data["sand"]["e"]
	Gamedata.sand_per_sec.mantissa = data["sand_per_sec"]["m"]; Gamedata.sand_per_sec.exponent = data["sand_per_sec"]["e"]
	Gamedata.sand_miner_on_off = data["sand_miner_on_off"]
	Gamedata.sand_miner_unlocked = data["sand_miner_unlocked"]
	Gamedata.sand_miner_upgrade_cost.mantissa = data["sand_miner_upgrade_cost"]["m"]; Gamedata.sand_miner_upgrade_cost.exponent = data["sand_miner_upgrade_cost"]["e"]
	
	# IRON INGOT
	Gamedata.iron_ingot.mantissa = data["iron_ingot"]["m"]; Gamedata.iron_ingot.exponent = data["iron_ingot"]["e"]
	Gamedata.iron_ingot_per_sec.mantissa = data["iron_ingot_per_sec"]["m"]; Gamedata.iron_ingot_per_sec.exponent = data["iron_ingot_per_sec"]["e"]
	Gamedata.iron_ingot_miner_on_off = data["iron_ingot_miner_on_off"]
	Gamedata.iron_ingot_miner_unlocked = data["iron_ingot_miner_unlocked"]
	Gamedata.iron_ingot_miner_upgrade_cost.mantissa = data["iron_ingot_miner_upgrade_cost"]["m"]; Gamedata.iron_ingot_miner_upgrade_cost.exponent = data["iron_ingot_miner_upgrade_cost"]["e"]
	
	# COPPER INGOT
	Gamedata.copper_ingot.mantissa = data["copper_ingot"]["m"]; Gamedata.copper_ingot.exponent = data["copper_ingot"]["e"]
	Gamedata.copper_ingot_per_sec.mantissa = data["copper_ingot_per_sec"]["m"]; Gamedata.copper_ingot_per_sec.exponent = data["copper_ingot_per_sec"]["e"]
	Gamedata.copper_ingot_miner_on_off = data["copper_ingot_miner_on_off"]
	Gamedata.copper_ingot_miner_unlocked = data["copper_ingot_miner_unlocked"]
	Gamedata.copper_ingot_miner_upgrade_cost.mantissa = data["copper_ingot_miner_upgrade_cost"]["m"]; Gamedata.copper_ingot_miner_upgrade_cost.exponent = data["copper_ingot_miner_upgrade_cost"]["e"]
	
	# GOLD INGOT
	Gamedata.gold_ingot.mantissa = data["gold_ingot"]["m"]; Gamedata.gold_ingot.exponent = data["gold_ingot"]["e"]
	Gamedata.gold_ingot_per_sec.mantissa = data["gold_ingot_per_sec"]["m"]; Gamedata.gold_ingot_per_sec.exponent = data["gold_ingot_per_sec"]["e"]
	Gamedata.gold_ingot_miner_on_off = data["gold_ingot_miner_on_off"]
	Gamedata.gold_ingot_miner_unlocked = data["gold_ingot_miner_unlocked"]
	Gamedata.gold_ingot_miner_upgrade_cost.mantissa = data["gold_ingot_miner_upgrade_cost"]["m"]; Gamedata.gold_ingot_miner_upgrade_cost.exponent = data["gold_ingot_miner_upgrade_cost"]["e"]
	
	# IRON SCREW
	Gamedata.iron_screw.mantissa = data["iron_screw"]["m"]; Gamedata.iron_screw.exponent = data["iron_screw"]["e"]
	Gamedata.iron_screw_per_sec.mantissa = data["iron_screw_per_sec"]["m"]; Gamedata.iron_screw_per_sec.exponent = data["iron_screw_per_sec"]["e"]
	Gamedata.iron_screw_miner_on_off = data["iron_screw_miner_on_off"]
	Gamedata.iron_screw_miner_unlocked = data["iron_screw_miner_unlocked"]
	Gamedata.iron_screw_miner_upgrade_cost.mantissa = data["iron_screw_miner_upgrade_cost"]["m"]; Gamedata.iron_screw_miner_upgrade_cost.exponent = data["iron_screw_miner_upgrade_cost"]["e"]
	
	# IRON PLATE
	Gamedata.iron_plate.mantissa = data["iron_plate"]["m"]; Gamedata.iron_plate.exponent = data["iron_plate"]["e"]
	Gamedata.iron_plate_per_sec.mantissa = data["iron_plate_per_sec"]["m"]; Gamedata.iron_plate_per_sec.exponent = data["iron_plate_per_sec"]["e"]
	Gamedata.iron_plate_miner_on_off = data["iron_plate_miner_on_off"]
	Gamedata.iron_plate_miner_unlocked = data["iron_plate_miner_unlocked"]
	Gamedata.iron_plate_miner_upgrade_cost.mantissa = data["iron_plate_miner_upgrade_cost"]["m"]; Gamedata.iron_plate_miner_upgrade_cost.exponent = data["iron_plate_miner_upgrade_cost"]["e"]
	
	# COPPER WIRE
	Gamedata.copper_wire.mantissa = data["copper_wire"]["m"]; Gamedata.copper_wire.exponent = data["copper_wire"]["e"]
	Gamedata.copper_wire_per_sec.mantissa = data["copper_wire_per_sec"]["m"]; Gamedata.copper_wire_per_sec.exponent = data["copper_wire_per_sec"]["e"]
	Gamedata.copper_wire_miner_on_off = data["copper_wire_miner_on_off"]
	Gamedata.copper_wire_miner_unlocked = data["copper_wire_miner_unlocked"]
	Gamedata.copper_wire_miner_upgrade_cost.mantissa = data["copper_wire_miner_upgrade_cost"]["m"]; Gamedata.copper_wire_miner_upgrade_cost.exponent = data["copper_wire_miner_upgrade_cost"]["e"]
	
	# STEEL INGOT
	Gamedata.steel_ingot.mantissa = data["steel_ingot"]["m"]; Gamedata.steel_ingot.exponent = data["steel_ingot"]["e"]
	Gamedata.steel_ingot_per_sec.mantissa = data["steel_ingot_per_sec"]["m"]; Gamedata.steel_ingot_per_sec.exponent = data["steel_ingot_per_sec"]["e"]
	Gamedata.steel_ingot_miner_on_off = data["steel_ingot_miner_on_off"]
	Gamedata.steel_ingot_miner_unlocked = data["steel_ingot_miner_unlocked"]
	Gamedata.steel_ingot_miner_upgrade_cost.mantissa = data["steel_ingot_miner_upgrade_cost"]["m"]; Gamedata.steel_ingot_miner_upgrade_cost.exponent = data["steel_ingot_miner_upgrade_cost"]["e"]
	
	# GLASS
	Gamedata.glass.mantissa = data["glass"]["m"]; Gamedata.glass.exponent = data["glass"]["e"]
	Gamedata.glass_per_sec.mantissa = data["glass_per_sec"]["m"]; Gamedata.glass_per_sec.exponent = data["glass_per_sec"]["e"]
	Gamedata.glass_miner_on_off = data["glass_miner_on_off"]
	Gamedata.glass_miner_unlocked = data["glass_miner_unlocked"]
	Gamedata.glass_miner_upgrade_cost.mantissa = data["glass_miner_upgrade_cost"]["m"]; Gamedata.glass_miner_upgrade_cost.exponent = data["glass_miner_upgrade_cost"]["e"]
	
	# STEEL GEAR
	Gamedata.steel_gear.mantissa = data["steel_gear"]["m"]; Gamedata.steel_gear.exponent = data["steel_gear"]["e"]
	Gamedata.steel_gear_per_sec.mantissa = data["steel_gear_per_sec"]["m"]; Gamedata.steel_gear_per_sec.exponent = data["steel_gear_per_sec"]["e"]
	Gamedata.steel_gear_miner_on_off = data["steel_gear_miner_on_off"]
	Gamedata.steel_gear_miner_unlocked = data["steel_gear_miner_unlocked"]
	Gamedata.steel_gear_miner_upgrade_cost.mantissa = data["steel_gear_miner_upgrade_cost"]["m"]; Gamedata.steel_gear_miner_upgrade_cost.exponent = data["steel_gear_miner_upgrade_cost"]["e"]
	
	# GOLD WIRE
	Gamedata.gold_wire.mantissa = data["gold_wire"]["m"]; Gamedata.gold_wire.exponent = data["gold_wire"]["e"]
	Gamedata.gold_wire_per_sec.mantissa = data["gold_wire_per_sec"]["m"]; Gamedata.gold_wire_per_sec.exponent = data["gold_wire_per_sec"]["e"]
	Gamedata.gold_wire_miner_on_off = data["gold_wire_miner_on_off"]
	Gamedata.gold_wire_miner_unlocked = data["gold_wire_miner_unlocked"]
	Gamedata.gold_wire_miner_upgrade_cost.mantissa = data["gold_wire_miner_upgrade_cost"]["m"]; Gamedata.gold_wire_miner_upgrade_cost.exponent = data["gold_wire_miner_upgrade_cost"]["e"]
	
	# CIRCUIT BOARD
	Gamedata.circuit_board.mantissa = data["circuit_board"]["m"]; Gamedata.circuit_board.exponent = data["circuit_board"]["e"]
	Gamedata.circuit_board_per_sec.mantissa = data["circuit_board_per_sec"]["m"]; Gamedata.circuit_board_per_sec.exponent = data["circuit_board_per_sec"]["e"]
	Gamedata.circuit_board_miner_on_off = data["circuit_board_miner_on_off"]
	Gamedata.circuit_board_miner_unlocked = data["circuit_board_miner_unlocked"]
	Gamedata.circuit_board_miner_upgrade_cost.mantissa = data["circuit_board_miner_upgrade_cost"]["m"]; Gamedata.circuit_board_miner_upgrade_cost.exponent = data["circuit_board_miner_upgrade_cost"]["e"]
