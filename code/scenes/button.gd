extends Area2D

signal state_changed(is_pressed)
var bodies_on_button = 0

func _on_body_entered(body):
	if body is BasePlayer:
		bodies_on_button += 1
		if bodies_on_button == 1:
			$ColorRect.color = Color(0, 1, 0)
			emit_signal("state_changed", true)

func _on_body_exited(body):
	if body is BasePlayer:
		bodies_on_button -= 1
		if bodies_on_button == 0:
			$ColorRect.color = Color(1, 1, 0)
			emit_signal("state_changed", false)