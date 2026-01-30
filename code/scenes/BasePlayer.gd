extends CharacterBody2D
class_name BasePlayer

# --- KONFIGURACE ---
# Export proměnné se ukáží v Inspektoru vpravo, takže je můžeš ladit bez sáhnutí do kódu.
@export_group("Physics")
@export var speed : float = 300.0
@export var jump_velocity : float = -400.0
@export var gravity : float = 980.0

@export_group("Inputs")
# Názvy akcí z Input Mapy. Defaultně "ui_..." pro testování, 
# ale u Fire/Water playerů to přepíšeme na "p1_..." a "p2_...".
@export var input_left : String = "ui_left"
@export var input_right : String = "ui_right"
@export var input_jump : String = "ui_accept"

@export_group("Game Logic")
@export_enum("Neutral", "Fire", "Water") var element_type : String = "Neutral"

func _physics_process(delta):
	# 1. Gravitace (Godot počítá delta time automaticky pro move_and_slide, 
	# ale pro gravitační zrychlení ho musíme aplikovat ručně)
	if not is_on_floor():
		velocity.y += gravity * delta

	# 2. Skok
	if Input.is_action_just_pressed(input_jump) and is_on_floor():
		velocity.y = jump_velocity

	# 3. Pohyb (získání směru -1, 0, nebo 1)
	var direction = Input.get_axis(input_left, input_right)
	if direction:
		velocity.x = direction * speed
	else:
		# Plynulé zastavení
		velocity.x = move_toward(velocity.x, 0, speed)

	# 4. Aplikace pohybu
	move_and_slide()
