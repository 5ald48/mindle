extends TextureButton



func _process(delta: float) -> void:
	pass



func _on_pressed() -> void:
	Gamedata.gold += 1
	print("gold")
	print(Gamedata.gold)
