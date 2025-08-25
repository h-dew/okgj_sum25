extends Sprite2D

var texturerotation = -PI/6
var textureoffset
var texturescale

var texturetrans


func _ready() -> void:
	var x = Vector2(6, 0)
	var y = Vector2(0, 8)
	
	offset = Vector2(0, 60)
	texturetrans = Transform2D(x, y, Vector2(0, 0))	


func _process(delta: float) -> void:	
	transform = texturetrans
	transform[2] = get_viewport().get_mouse_position()
	
	rotation = texturerotation
