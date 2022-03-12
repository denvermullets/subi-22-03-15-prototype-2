extends Entity

# === Class Abilities ===
var move = load_ability("move")

onready var animation_player = $AnimationPlayer
onready var animation_tree = $AnimationTree
onready var animation_state = animation_tree.get("parameters/playback")

func handle_input() -> void:
  velocity = Vector2()

  if Input.is_action_pressed("key_up"): move.execute(self, "up", animation_tree, animation_state)
  elif Input.is_action_pressed("key_down"): move.execute(self, "down", animation_tree, animation_state)
  elif Input.is_action_pressed("key_left"): move.execute(self, "left", animation_tree, animation_state)
  elif Input.is_action_pressed("key_right"): move.execute(self, "right", animation_tree, animation_state)
  else: move.execute(self, "idle", animation_tree, animation_state)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	handle_input()
