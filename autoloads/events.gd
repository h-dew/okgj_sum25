extends Node
#
#enum States {idle, paused, ending, loading,
#cops, hippies, businessmen, kids, dog, thunderstorm}
#
#var state # stores current state
#var prevState # used for pause
#
## State Varibles - can be used freely by individual states
#var chance: float 
#var cInc: float
##var actors: [Node]
#
#const SCREENTEXT = "res://screen_text.tscn"
#
#
#func _ready() -> void:
	#state = States.idle
	#
	#cInc = 0.001
	#
	#pass # Replace with function body.
#
#
#func _process(delta: float) -> void:
	#match state:
		#States.idle:
			#chance += cInc * delta
			#if(PlayerData.rand.randf_range(0, 1) < chance):
				#setCops()
		#States.paused:
			#pass
		#States.ending:
			#pass
		#States.loading:
			#pass
			#
		#States.cops:
			#pass
		#States.hippies:
			#pass
		#States.businessmen:
			#pass
		#States.kids:
			#pass
		#States.dog:
			#pass
		#States.thunderstorm:
			#pass
	#pass
	#
#
#func setIdle() -> void:
	#chance = 0
	#pass
	#
#func setPaused() -> bool:
	#if state == States.paused:
		#return false
	#prevState = state
	#state = States.paused
	#return true
	#
#func unsetPause() -> bool:
	#if state != States.paused:
		#return false
	#state = prevState
	#return true
	#
#func setEnding() -> void:
	#pass
#func setLoading() -> void:
	#pass
#
#
#func setCops() -> void:
	#state = States.cops
	#print("theyre coming to get you!!")
	#
	#var cop = load("res://actors/cop.tscn")
	#cop = cop.instantiate()
	#get_parent().add_child(cop)
	#
	#cop = get_parent().get_node("Cop")
	##cop.get_child(0).get_child(0).get_child(0).get_child(0).input_event.connect(_cop_pressed)
	##actors += [cop]
	#
	#
#func _cop_pressed() -> void:
	#pass
	#
#func setHippies() -> void:
	#pass
#func setBusinessmen() -> void:
	#pass
#func setKids() -> void:
	#pass
#func setDog() -> void:
	#pass
#func setThunderstorm() -> void:
	#pass
