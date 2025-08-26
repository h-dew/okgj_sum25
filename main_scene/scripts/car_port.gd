extends SubViewport
var view
var textureparent


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	size = DisplayServer.screen_get_size()
	view = PlayerData.view
	
	textureparent = get_node("Views")
	
	textureparent.get_node("Right").hide()
	textureparent.get_node("Left").hide()
	textureparent.get_node("Back").hide()
	
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	size = PlayerData.vpsize
	if view != PlayerData.view:
		changeTexture(PlayerData.view)

func changeTexture(newview: int):
	match newview:
		1:
			endTexture()
			textureparent.get_node("Front").show()
			view = newview
		2:
			endTexture()
			textureparent.get_node("Right").show()
			view = newview
		0:
			endTexture()
			textureparent.get_node("Left").show()
			view = newview
		3:
			endTexture()
			textureparent.get_node("Back").show()
			view = newview

func endTexture(): # PRIVATE
	match view:
		1:
			textureparent.get_node("Front").hide()
		2:
			textureparent.get_node("Right").hide()
		0:
			textureparent.get_node("Left").hide()
		3:
			textureparent.get_node("Back").hide()
