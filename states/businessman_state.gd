class_name BusinessmanState
extends BaseState


func enter() -> void:
	# Change the screen text -- make into global variable?--
	get_tree().current_scene.get_node("ScreenText").get_child(1).text = "Businessman incoming"
	get_tree().current_scene.get_node("ScreenText").visible = true
	await get_tree().create_timer(2.0).timeout # Waits for 2 seconds
	get_tree().current_scene.get_node("ScreenText").visible = false
	
	
	var bm_scene := load("res://actors/businessman.tscn")
	var bm = bm_scene.instantiate()
	
	get_tree().current_scene.add_child(bm)
	
func exit() -> void:
	get_tree().current_scene.get_node("ScreenText").visible = false
