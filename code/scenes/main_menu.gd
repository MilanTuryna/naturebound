extends Control

func _ready():
	$ClickSound.bus = "SFX"

	if AudioServer.get_bus_index("Music") == -1:
		AudioServer.add_bus()
		AudioServer.set_bus_name(AudioServer.bus_count - 1, "Music")
	if AudioServer.get_bus_index("SFX") == -1:
		AudioServer.add_bus()
		AudioServer.set_bus_name(AudioServer.bus_count - 1, "SFX")

	var config = ConfigFile.new()
	if config.load("user://settings.cfg") == OK:
		var m_vol = config.get_value("audio", "music", 1.0)
		var s_vol = config.get_value("audio", "sfx", 1.0)
		var m_bus = AudioServer.get_bus_index("Music")
		var s_bus = AudioServer.get_bus_index("SFX")

		AudioServer.set_bus_volume_db(m_bus, linear_to_db(m_vol))
		AudioServer.set_bus_mute(m_bus, m_vol == 0)
		AudioServer.set_bus_volume_db(s_bus, linear_to_db(s_vol))
		AudioServer.set_bus_mute(s_bus, s_vol == 0)

func _on_play_button_pressed():
	if $ClickSound.stream != null:
		$ClickSound.play()
		await get_tree().create_timer(0.2).timeout
	get_tree().change_scene_to_file("res://scenes/Level1.tscn")

func _on_options_button_pressed():
	if $ClickSound.stream != null:
		$ClickSound.play()
		await get_tree().create_timer(0.2).timeout
	get_tree().change_scene_to_file("res://scenes/options_menu.tscn")