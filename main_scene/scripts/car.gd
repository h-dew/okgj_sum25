extends Node3D

var viewdist

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	viewdist = 5
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	#var playerpos = get_parent().get_node("Player").position - Vector3(-6,5.5,7)
	position = get_parent().get_node("Player").position
