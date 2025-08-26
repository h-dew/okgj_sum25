extends AudioStreamPlayer

signal bark()

func _process(delta: float) -> void:
	if Input.is_action_just_pressed("bark") && PlayerData.bark:
		play()
	pass
	
