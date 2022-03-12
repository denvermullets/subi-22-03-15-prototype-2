extends Node2D

func execute(
    obj,
    direction,
    animation_tree = null,
    animation_state = null
  ):

  obj.velocity = Vector2()

  if direction == "up":
    obj.velocity.y -= 1
  if direction == "down":
    obj.velocity.y += 1
  if direction == "left":
    obj.velocity.x -= 1
  if direction == "right":
    obj.velocity.x += 1
  if direction == "idle":
    pass

  obj.velocity = obj.velocity.normalized()

  if obj.velocity != Vector2.ZERO:
    animation_tree.set("parameters/Idle/blend_position", obj.velocity)
    animation_tree.set("parameters/Walk/blend_position", obj.velocity)
    animation_state.travel("Walk")
  else:
    animation_state.travel("Idle")

  obj.velocity = obj.move_and_slide(obj.velocity * obj.max_speed)
