class_name StartState
extends BaseState

func enter() -> void:
	get_tree().current_scene.get_node("ScreenText").visible = true
	get_tree().current_scene.get_node("ScreenText").get_child(1).text = "*Car Door Noise*"
	get_tree().current_scene.get_node("ScreenText").get_child(0).color = Color(0,0,0,1)
	await get_tree().create_timer(3.0).timeout # Waits for 3 seconds
	get_tree().current_scene.get_node("ScreenText").get_child(1).text = "Your owner is gone"
	get_tree().current_scene.get_node("ScreenText").get_child(0).color = Color(0.23,0.23,0.23,0.38)
	await get_tree().create_timer(3.0).timeout # Waits for 3 seconds
	state_finished.emit("idle")

func exit() -> void:
	get_tree().current_scene.get_node("ScreenText").visible = false
