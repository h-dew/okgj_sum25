extends Camera3D

var vpsize
var mousepos


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	vpsize = get_viewport().get_visible_rect().size
	mousepos = get_viewport().get_mouse_position()
	
	var viewoffset
	match PlayerData.view:
		0:
			viewoffset = Vector3(0, 90, 0)
		2:
			viewoffset = Vector3(0, -90, 0)
		3:
			viewoffset = Vector3(0, -180, 0)
		_:
			viewoffset = Vector3.ZERO
	
	var mouseoffset = Vector3(0.1 * remap(mousepos.y, 0, vpsize.y, 1, -1), 0.1 * remap(mousepos.x, 0, vpsize.x, 1, -1), 0)
	rotation = mouseoffset + viewoffset
