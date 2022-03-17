extends Node2D

func execute(
    obj,
    animation_tree = null,
    animation_state = null
  ):

  obj.velocity = obj.velocity.normalized() * obj.max_speed
  if obj.velocity != Vector2.ZERO:
    animation_tree.set("parameters/Idle/blend_position", obj.velocity)
    animation_tree.set("parameters/Walk/blend_position", obj.velocity)
    animation_state.travel("Walk")
  else:
    animation_state.travel("Idle")

  obj.velocity = obj.move_and_slide(obj.velocity)
