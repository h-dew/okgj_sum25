extends Node

enum Views {front, left, right}
var currentView


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	currentView = Views.front


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
