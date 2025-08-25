extends Camera3D

@onready var viewport_size: Vector2
@onready var mouse_position: Vector2


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	viewport_size = get_viewport().get_visible_rect().size
	mouse_position = get_viewport().get_mouse_position()

	var view_offset = get_view_offset_for_current_view()
	var mouse_offset = calculate_mouse_offset()
	rotation = mouse_offset + view_offset
	
func get_view_offset_for_current_view() -> Vector3:
	match PlayerData.view:
		PlayerData.Views.left:
			return Vector3(GameData.CAMERA_BASE_PITCH, GameData.CAMERA_LEFT_YAW, 0)
		PlayerData.Views.right:
			return Vector3(GameData.CAMERA_SIDE_PITCH, GameData.CAMERA_RIGHT_YAW, 0)
		PlayerData.Views.back:
			return Vector3(GameData.CAMERA_BASE_PITCH, GameData.CAMERA_BACK_YAW, 0)
		_: # front
			return Vector3(GameData.CAMERA_BASE_PITCH, GameData.CAMERA_FRONT_YAW, 0)

func calculate_mouse_offset() -> Vector3:
	var normalized_mouse_y = remap(mouse_position.y, 0, viewport_size.y, 0, -1)
	var normalized_mouse_x = remap(mouse_position.x, 0, viewport_size.x, 1, -1)
	
	return Vector3(
		GameData.MOUSE_SENSITIVITY * normalized_mouse_y,
		GameData.MOUSE_SENSITIVITY * normalized_mouse_x,
		0
	)
