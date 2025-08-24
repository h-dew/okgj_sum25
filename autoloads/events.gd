extends Node

enum States {idle, paused, ending, loading,
cops, hippies, businessmen, kids, dog, thunderstorm}

var state
var prevState

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	match state:
		States.idle:
			pass
		States.paused:
			pass
		States.ending:
			pass
		States.loading:
			pass
			
		States.cops:
			pass
		States.hippies:
			pass
		States.businessmen:
			pass
		States.kids:
			pass
		States.dog:
			pass
		States.thunderstorm:
			pass
	pass
	

func setIdle() -> void:
	pass
	
func setPaused() -> bool:
	if state == States.paused:
		return false
	prevState = state
	state = States.paused
	return true
	
func unsetPause() -> bool:
	if state != States.paused:
		return false
	state = prevState
	return true
	
func setEnding() -> void:
	pass
func setLoading() -> void:
	pass


func setCops() -> void:
	pass
func setHippies() -> void:
	pass
func setBusinessmen() -> void:
	pass
func setKids() -> void:
	pass
func setDog() -> void:
	pass
func setThunderstorm() -> void:
	pass
