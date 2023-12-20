class_name Gate
extends Node2D

var state: bool = false
var start_pos: Vector2

@export var open_offset: Vector2 = Vector2(-200, 0)
@export var speed: int = 400

func close():
	state = false

func open():
	state = true

# Called when the node enters the scene tree for the first time.
func _ready():
	start_pos = position
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	var target_pos: Vector2
	if state: 
		target_pos = start_pos + open_offset
	else:
		target_pos = start_pos
	position = position.move_toward(target_pos, speed * delta)
	pass
