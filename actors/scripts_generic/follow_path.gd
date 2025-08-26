extends PathFollow3D

signal path_completed
signal path_progress_updated(progress: float)

var speed := 0.1
var is_moving := true
var snapped_progress : float

func _ready() -> void:
	snapped_progress = 0.0

func _process(delta: float) -> void:
	if not is_moving:
		return
		
	progress_ratio += speed * delta
	if snapped_progress < snapped(progress_ratio, 0.01):
		snapped_progress = snapped(progress_ratio, 0.01)
		path_progress_updated.emit(progress_ratio)
	
	# Handle path completion
	if progress_ratio >= 1.0:
		progress_ratio = 1.0
		stop_movement()
		path_completed.emit()

func set_speed(new_speed: float) -> void:
	speed = new_speed

func stop_movement() -> void:
	is_moving = false

func resume_movement() -> void:
	is_moving = true
