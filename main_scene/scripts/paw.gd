extends Sprite2D

@onready var paw_transform: Transform2D

func _ready() -> void:
	setup_paw_transform()
	offset = Vector2(0, GameData.PAW_OFFSET_Y)

func setup_paw_transform() -> void:
	var scale_x = Vector2(GameData.PAW_SCALE_X, 0)
	var scale_y = Vector2(0, GameData.PAW_SCALE_Y)
	paw_transform = Transform2D(scale_x, scale_y, Vector2.ZERO)
	paw_transform = paw_transform.rotated(GameData.PAW_ROTATION)  # Bake rotation into transform

func _process(delta: float) -> void:
	get_parent().get_parent().get_parent().size = PlayerData.vpsize
	transform = paw_transform
	transform.origin = get_node("/root").get_mouse_position()
	# No need to set rotation here since it's baked into paw_transform
