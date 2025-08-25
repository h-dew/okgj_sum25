class_name CopsState
extends BaseState


func enter() -> void:
	# Change the screen text -- make into global variable?--
	get_tree().current_scene.get_node("ScreenText").get_child(1).text = "The cops are coming"
	get_tree().current_scene.get_node("ScreenText").visible = true
	await get_tree().create_timer(2.0).timeout # Waits for 2 seconds
	get_tree().current_scene.get_node("ScreenText").visible = false
	
	
	var cop_scene := load("res://actors/cop.tscn")
	var cop = cop_scene.instantiate()
	
	get_tree().current_scene.add_child(cop)
	
func exit() -> void:
	get_tree().current_scene.get_node("ScreenText").visible = false
