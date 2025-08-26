extends Node3D

func _on_static_body_3d_input_event(camera: Node, event: InputEvent, event_position: Vector3, normal: Vector3, shape_idx: int) -> void:
	if Input.is_action_just_pressed("bark"):
		get_node("Path3D/PathFollow3D/Sprite3D").modulate -= Color(0, 0.1, 0.1, 0)
	pass # Replace with function body.
