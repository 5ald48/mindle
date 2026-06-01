extends TextureButton



func _process(delta: float) -> void:
	pass



func _on_pressed() -> void:
	Gamedata.coal += 1
	print("coal")
	print( Gamedata.coal)
