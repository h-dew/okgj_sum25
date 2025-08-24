extends Sprite3D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	texture = get_parent().get_node("CarPort").get_texture()
	position = get_parent().get_parent().get_node("Player").position + PlayerData.caroffset * 5
	pass
