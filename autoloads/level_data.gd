extends Node
# NEEDS WORK BADLY
# match w/ enum level states

var cInc: float

func _ready() -> void:
	cInc = 0.0001
	pass # Replace with function body.

func _process(delta: float) -> void:
	pass
	
func getCInc() -> float:
	# probably put a match here
	return cInc
