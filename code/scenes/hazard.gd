extends Area2D

@export_enum("Fire", "Water", "Acid") var hazard_type : String = "Acid"

# Načtení zvuků přímo z tvé složky audio
var fire_death_sound = preload("res://audio/fire-death.ogg")
var water_death_sound = preload("res://audio/water-death.ogg")

func _ready():
	var visual = $ColorRect
	if visual:
		match hazard_type:
			"Fire": visual.color = Color.RED
			"Water": visual.color = Color.BLUE
			"Acid": visual.color = Color.GREEN

func _on_body_entered(body):
	if body is BasePlayer:
		check_kill(body)

func check_kill(player):
	match hazard_type:
		"Fire":
			if player.get("element_type") == "Water":
				die(player)
		"Water":
			if player.get("element_type") == "Fire":
				die(player)
		"Acid":
			die(player)

func die(player):
	print("Hráč zemřel: ", player.name)

	# Zastavíme hráče, aby po smrti už nepadal dál a nehýbal se
	player.set_physics_process(false)

	# Vybereme správný zvuk
	if player.get("element_type") == "Fire":
		$DeathSound.stream = fire_death_sound
	elif player.get("element_type") == "Water":
		$DeathSound.stream = water_death_sound

	# Přehrajeme zvuk a počkáme, až skončí
	if $DeathSound.stream != null:
		$DeathSound.play()
		await $DeathSound.finished

	# Až zvuk dohraje, přepneme na Game Over obrazovku
	get_tree().change_scene_to_file("res://scenes/game_over.tscn")
