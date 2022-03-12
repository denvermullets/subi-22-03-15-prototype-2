extends KinematicBody2D
class_name Entity

var velocity: Vector2 = Vector2()
var direction: Vector2 = Vector2()
var max_speed: int = 50

func load_ability(name):
  var scene = load("res://scenes/abilities/" + name + "/" + name + ".tscn")
  var scene_node = scene.instance()
  add_child(scene_node)
  return scene_node