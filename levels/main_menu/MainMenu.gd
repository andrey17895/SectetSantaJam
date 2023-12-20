extends Scene
class_name MainMenu



# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


func _physics_process(_delta: float) -> void:
	pass
	


func _on_quit_pressed() -> void:
	print("quit")
	get_tree().quit()


func _on_new_game_button_pressed() -> void:
	_end_scene()


