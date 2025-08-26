extends Control

@onready var viewport_half_size: Vector2
@onready var mouse_position: Vector2
@onready var left_button: Control
@onready var right_button: Control

func _ready() -> void:
	left_button = get_node("Viewnav_Left")
	right_button = get_node("Viewnav_Right")

func _process(delta: float) -> void:
	viewport_half_size = get_viewport().get_visible_rect().size / 2
	mouse_position = get_viewport().get_mouse_position()
	
	size = PlayerData.vpsize
	
	var alpha_value = calculate_ui_fade_alpha()
	var alpha_color = Color(1, 1, 1, alpha_value)
	
	left_button.self_modulate = alpha_color
	right_button.self_modulate = alpha_color
	
	# button positioning
	var texsize = get_node("Viewnav_Left").size
	var ypos = PlayerData.vpsize.y / 2 - texsize.y / 2
	get_node("Viewnav_Left").position.y = ypos
	
	get_node("Viewnav_Right").position.y = ypos
	get_node("Viewnav_Right").position.x = PlayerData.vpsize.x - texsize.x



func calculate_ui_fade_alpha() -> float:
	var distance_from_center = abs(mouse_position.x - viewport_half_size.x)
	var fade_threshold = viewport_half_size.x * GameData.UI_FADE_THRESHOLD
	
	var alpha = remap(
		distance_from_center, 
		-fade_threshold, 
		fade_threshold, 
		GameData.UI_FADE_MIN_ALPHA, 
		GameData.UI_FADE_MAX_ALPHA
	)
	
	return clamp(alpha, 0.0, 1.0)

func _on_viewnav_left_button_down() -> void:
	PlayerData.turnLeft()

func _on_viewnav_right_button_down() -> void:
	PlayerData.turnRight()
