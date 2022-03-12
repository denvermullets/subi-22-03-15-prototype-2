extends Entity

# === Class Abilities ===
var move = load_ability("move")

func handle_input() -> void:
	velocity = Vector2()

	if Input.is_action_pressed("key_up"): move.execute(self, "up")
	if Input.is_action_pressed("key_down"): move.execute(self, "down")
	if Input.is_action_pressed("key_left"): move.execute(self, "left")
	if Input.is_action_pressed("key_right"): move.execute(self, "right")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	handle_input()
