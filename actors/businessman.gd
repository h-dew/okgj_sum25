extends Node3D




func _on_moused_event(camera: Node, event: InputEvent, event_position: Vector3, normal: Vector3, shape_idx: int) -> void:
	if Input.is_action_pressed("select"):
		get_node("Path3D/PathFollow3D/Sprite3D").modulate = Color(1, 0, 0, 1)
