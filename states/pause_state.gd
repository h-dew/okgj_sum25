class_name PauseState
extends BaseState

var prevbark


func enter() -> void:
	prevbark = PlayerData.bark
	PlayerData.bark = false
	pass

func exit() -> void:
	PlayerData.bark = prevbark

func update(delta: float) -> void:
	pass
