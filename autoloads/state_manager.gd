extends Node

var current_state: BaseState
var states: Dictionary = {}


func _ready() -> void:
	# Register all states
	register_state("idle", IdleState.new())
	register_state("cops", CopsState.new())
	register_state("start", StartState.new())
	register_state("businessman", BusinessmanState.new())
	
	change_state("start")

func register_state(name: String, state: BaseState) -> void:
	states[name] = state
	add_child(state)
	state.state_finished.connect(_on_state_finished)
	
func change_state(state_name: String) -> void:
	if current_state:
		current_state.exit()
		
	current_state = states[state_name]
	current_state.enter()

func _process(delta: float) -> void:
	if current_state:
		current_state.update(delta)
		
func _on_state_finished(next_state_name: String) -> void:
	change_state(next_state_name)
