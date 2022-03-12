extends KinematicBody2D

var velocity: Vector2
var speed: int = 200
var direction: Vector2 = Vector2()

func read_input() -> void:
  velocity = Vector2()

  if Input.is_action_pressed("key_up"):
    velocity.y -= 1
    direction = Vector2(0, -1)
  if Input.is_action_pressed("key_down"):
    velocity.y += 1
    direction = Vector2(0, 1)
  if Input.is_action_pressed("key_left"):
    velocity.x -= 1
    direction = Vector2(-1, 0)
  if Input.is_action_pressed("key_right"):
    velocity.x += 1
    direction = Vector2(1, 0)

  velocity = velocity.normalized()
  velocity = move_and_slide(velocity * speed)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	read_input()
