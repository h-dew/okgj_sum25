class_name BaseState
extends Node

signal state_finished(next_state_name: String)


func enter() -> void:
	pass
	
func exit() -> void:
	pass

func update(delta: float) -> void:
	pass

func handle_input(event: InputEvent) -> void:
	pass
