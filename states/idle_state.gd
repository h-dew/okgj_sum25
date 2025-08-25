class_name IdleState
extends BaseState

var encounter_chance : float


func enter() -> void:
	PlayerData.bark = true
	var encounter_chance = 0.0
	

func update(delta: float) -> void:
	encounter_chance += GameData.CHANCE_INCREMENT * delta
	if PlayerData.rand.randf() < encounter_chance:
		var random_encounter = choose_random_encounter()
		state_finished.emit(random_encounter)

func choose_random_encounter() -> String:
	#var encounters = ["cops", "hippies", "businessmen", "kids", "dog", "thunderstorm"]
	#return encounters[PlayerData.random_generator.randi() % encounters.size()]
	return "businessman"
