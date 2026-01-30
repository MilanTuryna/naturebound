extends Area2D

# Vybereme v editoru, co je tohle za jezírko
@export_enum("Fire", "Water", "Acid") var hazard_type : String = "Acid"

func _ready():
	# Volitelné: Změna barvy podle typu automaticky (pro MVP)
	var visual = $ColorRect # Ujisti se, že se node jmenuje ColorRect
	if visual:
		match hazard_type:
			"Fire": visual.color = Color.RED
			"Water": visual.color = Color.BLUE
			"Acid": visual.color = Color.GREEN

func _on_body_entered(body):
	print("test")
	# Ověříme, že do nás vlezl hráč (pomocí class_name BasePlayer)
	if body is BasePlayer:
		check_kill(body)

func check_kill(player):
	match hazard_type:
		"Fire":
			# Oheň zabíjí vodu (a neutrála, pokud chceš)
			if player.element_type == "Water":
				die(player)
		"Water":
			# Voda zabíjí oheň
			if player.element_type == "Fire":
				die(player)
		"Acid":
			# Kyselina zabíjí všechno
			die(player)

func die(player):
	print("Hráč zemřel: ", player.name)
	# Restart aktuálního levelu
	call_deferred("reload_level")

func reload_level():
	get_tree().reload_current_scene()
