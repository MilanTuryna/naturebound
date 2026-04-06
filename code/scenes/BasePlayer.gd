extends CharacterBody2D
class_name BasePlayer

@export_group("Physics")
@export var speed : float = 300.0
@export var jump_velocity : float = -400.0
@export var gravity : float = 980.0

@export_group("Inputs")
@export var input_left : String = "ui_left"
@export var input_right : String = "ui_right"
@export var input_jump : String = "ui_accept"

@export_group("Game Logic")
@export_enum("Neutral", "Fire", "Water") var element_type : String = "Neutral"

func _physics_process(delta):
	if not is_on_floor():
		velocity.y += gravity * delta

	if Input.is_action_just_pressed(input_jump) and is_on_floor():
		velocity.y = jump_velocity

	var direction = Input.get_axis(input_left, input_right)

	if direction:
		velocity.x = direction * speed
		if direction < 0:
			$Sprite2D.flip_h = true
		elif direction > 0:
			$Sprite2D.flip_h = false
	else:
		velocity.x = move_toward(velocity.x, 0, speed)

	move_and_slide()
