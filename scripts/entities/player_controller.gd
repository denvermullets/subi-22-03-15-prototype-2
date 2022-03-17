extends Entity

# === Class Abilities ===
var move = load_ability("move")

onready var animation_player = $AnimationPlayer
onready var animation_tree = $AnimationTree
onready var animation_state = animation_tree.get("parameters/playback")

func handle_input() -> void:
  velocity = Vector2()

  velocity.x = Input.get_action_strength('ui_right') - Input.get_action_strength('ui_left')
  velocity.y = Input.get_action_strength('ui_down') - Input.get_action_strength('ui_up')
  move.execute(self, animation_tree, animation_state)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	handle_input()
