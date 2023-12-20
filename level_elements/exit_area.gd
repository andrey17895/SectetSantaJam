extends Area2D

signal exit_condition

var bodies: Array[PlatformerController2D]

func emit_exit_condition():
	exit_condition.emit()

func _on_body_entered(body:Node2D):
	if(body is PlatformerController2D):
		print("entered")
		bodies.append(body as PlatformerController2D)
		if (bodies.size() == 2):
			emit_exit_condition()



func _on_body_exited(body:Node2D):
	if(body is PlatformerController2D):
		print("exited")
		body = body as PlatformerController2D
		bodies.remove_at(bodies.find(body))


func _on_exit_condition():
	$ColorRect.color = Color.RED
