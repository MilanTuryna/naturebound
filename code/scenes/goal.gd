extends Area2D

@export_enum("Fire", "Water") var door_element : String = "Fire"
var is_satisfied = false

func _ready():
	add_to_group("goals")
	if door_element == "Fire":
		$ColorRect.color = Color(1, 0, 0, 0.5)
	elif door_element == "Water":
		$ColorRect.color = Color(0, 0, 1, 0.5)

func _on_body_entered(body):
	if body.get("element_type") == door_element:
		is_satisfied = true
		check_win()

func _on_body_exited(body):
	if body.get("element_type") == door_element:
		is_satisfied = false

func check_win():
	var all_satisfied = true
	for goal in get_tree().get_nodes_in_group("goals"):
		if not goal.is_satisfied:
			all_satisfied = false

	if all_satisfied:
		get_tree().change_scene_to_file("res://scenes/Level1.tscn")