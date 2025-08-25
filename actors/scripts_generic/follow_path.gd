extends PathFollow3D

var progPerSec

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	progPerSec = 0.1
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	progress_ratio += progPerSec * delta
