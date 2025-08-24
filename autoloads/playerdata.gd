extends Node

enum Views {left = 0, front = 1, right = 2, back = 3}
var view

var sanity: float

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
	
func changeView(newView: Views):
	match newView:
		Views.front:
			view = newView
			caroffset = Vector3(0,0,-1)
		Views.left:
			view = newView
			caroffset = Vector3(-1,0,0)
		Views.right:
			view = newView
			caroffset = Vector3(1,0,0)
		Views.back:
			view = newView
			caroffset = Vector3(0,0,1)
			
func turnLeft():
	changeView(abs(view - 1) % 4)
	
func turnRight():
	changeView((view + 1) % 4)
