extends Control

func _ready():
	var t = 0.0
	if Engine.has_meta("last_time"):
		t = Engine.get_meta("last_time")

	var minutes = int(t) / 60
	var seconds = int(t) % 60
	var milliseconds = int((t - int(t)) * 100)
	$VBoxContainer/TimeLabel.text = "YOUR TIME: %02d:%02d:%02d" % [minutes, seconds, milliseconds]

func _on_restart_pressed():
	if $ClickSound.stream != null:
		$ClickSound.play()
		await get_tree().create_timer(0.2).timeout
	get_tree().change_scene_to_file("res://scenes/Level1.tscn")

func _on_menu_pressed():
	if $ClickSound.stream != null:
		$ClickSound.play()
		await get_tree().create_timer(0.2).timeout
	get_tree().change_scene_to_file("res://scenes/main_menu.tscn")