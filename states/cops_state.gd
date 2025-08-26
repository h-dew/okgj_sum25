class_name CopsState
extends BaseState

var cop_scene := load("res://actors/cop.tscn")
var cop = cop_scene.instantiate()

func enter() -> void:
	# Change the screen text -- make into global variable?--
	get_tree().current_scene.get_node("ScreenText").get_child(1).text = "The cops are coming"
	get_tree().current_scene.get_node("ScreenText").visible = true
	await get_tree().create_timer(2.0).timeout # Waits for 2 seconds
	get_tree().current_scene.get_node("ScreenText").visible = false

	get_tree().current_scene.add_child(cop)
	cop.get_node("Path3D/PathFollow3D").path_completed.connect(_on_path_completed)
	cop.get_node("Timer").timeout.connect(_on_timeout)

func update(delta: float) -> void:
	pass
	
func _on_path_completed() -> void:
	cop.get_node("Path3D/PathFollow3D/Text01").visible = true
	await get_tree().create_timer(2.0).timeout # Waits for 2 seconds
	cop.get_node("Path3D/PathFollow3D/Text01").visible = false
	await get_tree().create_timer(1.0).timeout # Waits for 1 sec
	get_tree().current_scene.get_node("ScreenText").get_child(1).text = "Grab his gun"
	get_tree().current_scene.get_node("ScreenText").visible = true
	await get_tree().create_timer(2.0).timeout # Waits for 2 seconds
	get_tree().current_scene.get_node("ScreenText").visible = false
	cop.get_node("Timer").start()
	
func _on_timeout() -> void:
	cop.get_node("Path3D/PathFollow3D/Text02").visible = true
	await get_tree().create_timer(2.0).timeout # Waits for 2 seconds
	cop.get_node("Path3D/PathFollow3D/Text02").visible = false
	await get_tree().create_timer(1.0).timeout # Waits for 1 sec
	state_finished.emit("idle")

func exit() -> void:
	get_tree().current_scene.get_node("ScreenText").visible = false
