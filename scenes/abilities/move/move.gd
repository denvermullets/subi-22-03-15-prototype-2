extends Node2D

func execute(obj, direction):
	obj.velocity = Vector2()

	if direction == "up":
		obj.velocity.y -= 1
	if direction == "down":
		obj.velocity.y += 1
	if direction == "left":
		obj.velocity.x -= 1
	if direction == "right":
		obj.velocity.x += 1


	obj.velocity = obj.velocity.normalized()
	obj.velocity = obj.move_and_slide(obj.velocity * obj.max_speed)
