extends Node2D

var time_elapsed = 0.0

func _ready():
	if ResourceLoader.exists("res://audio/threshold_of_deep_music.mp3"):
		var music_player = AudioStreamPlayer.new()
		music_player.stream = load("res://audio/threshold_of_deep_music.mp3")
		music_player.bus = "Music"
		music_player.autoplay = true
		add_child(music_player)

func _process(delta):
	time_elapsed += delta
	Engine.set_meta("last_time", time_elapsed)

	var minutes = int(time_elapsed) / 60
	var seconds = int(time_elapsed) % 60
	var milliseconds = int((time_elapsed - int(time_elapsed)) * 100)
	$CanvasLayer/TimeLabel.text = "%02d:%02d:%02d" % [minutes, seconds, milliseconds]
