class_name GameButton
extends Node2D


@export var gate: Gate
@onready var rect := $ColorRect

var inside: Array[Node2D] = []
var is_pressed: bool = false


func press():
	gate.open()
	rect.position.y += 5


func release():
	gate.close()
	rect.position.y -= 5


func _on_area_2d_body_entered(body:Node2D):
	if inside.size() == 0:
		press()
	inside.append(body)
	pass # Replace with function body.


func _on_area_2d_body_exited(body:Node2D):
	inside.remove_at(inside.find(body))
	if inside.size() == 0:
		release()
	pass # Replace with function body.
