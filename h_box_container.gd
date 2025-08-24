extends HBoxContainer
var vpsizeh
var mousepos


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	vpsizeh = get_viewport().get_visible_rect().size / 2
	mousepos = get_viewport().get_mouse_position()
	
	var alpha = Color(1, 1, 1, clamp(remap(abs(mousepos.x - vpsizeh.x), -vpsizeh.x * 0.9, vpsizeh.x * 0.9, -2, 1), 0, 1))
	
	
	get_node("Viewnav_Left").self_modulate = alpha
	get_node("Viewnav_Right").self_modulate = alpha
