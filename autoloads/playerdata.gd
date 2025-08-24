extends Node

enum Views {front, left, right, back}
var view
var caroffset
var vpsize
var mousepos


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	changeView(Views.front)
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	
func changeView(view: Views):
	match view:
		Views.front:
			caroffset = Vector3(0,0,9)
		Views.left:
			caroffset = Vector3(0,0,9)
		Views.right:
			caroffset = Vector3(0,0,9)
		Views.back:
			caroffset = Vector3(0,0,-9)
