extends TextureButton



func _process(delta: float) -> void:
	pass



func _on_pressed() -> void:
	Gamedata.copper += 1
	print("copper")
	print(Gamedata.copper)
