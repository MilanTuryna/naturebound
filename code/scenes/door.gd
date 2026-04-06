extends StaticBody2D

var active_signals = 0

func _on_button_state_changed(is_pressed):
	if is_pressed:
		active_signals += 1
	else:
		active_signals -= 1

	if active_signals > 0:
		visible = false
		$CollisionShape2D.set_deferred("disabled", true)
	else:
		visible = true
		$CollisionShape2D.set_deferred("disabled", false)