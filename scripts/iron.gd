extends TextureButton



func _process(delta: float) -> void:
	pass



func _on_pressed() -> void:
	Gamedata.iron += 1
	print("iron")
	print(Gamedata.iron)
