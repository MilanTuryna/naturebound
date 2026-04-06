extends Control

var music_bus
var sfx_bus
var config = ConfigFile.new()

func _ready():
	$ClickSound.bus = "SFX"

	if AudioServer.get_bus_index("Music") == -1:
		AudioServer.add_bus()
		AudioServer.set_bus_name(AudioServer.bus_count - 1, "Music")
	if AudioServer.get_bus_index("SFX") == -1:
		AudioServer.add_bus()
		AudioServer.set_bus_name(AudioServer.bus_count - 1, "SFX")

	music_bus = AudioServer.get_bus_index("Music")
	sfx_bus = AudioServer.get_bus_index("SFX")

	if config.load("user://settings.cfg") == OK:
		$VBoxContainer/MusicSlider.value = config.get_value("audio", "music", 1.0)
	else:
		$VBoxContainer/MusicSlider.value = db_to_linear(AudioServer.get_bus_volume_db(music_bus))

func _on_music_slider_value_changed(value):
	AudioServer.set_bus_volume_db(music_bus, linear_to_db(value))
	AudioServer.set_bus_mute(music_bus, value == 0)
	config.set_value("audio", "music", value)
	config.save("user://settings.cfg")

func _on_sfx_slider_value_changed(value):
	AudioServer.set_bus_volume_db(sfx_bus, linear_to_db(value))
	AudioServer.set_bus_mute(sfx_bus, value == 0)
	config.set_value("audio", "sfx", value)
	config.save("user://settings.cfg")

func _on_back_pressed():
	if $ClickSound.stream != null:
		$ClickSound.play()
		await get_tree().create_timer(0.2).timeout
	get_tree().change_scene_to_file("res://scenes/main_menu.tscn")