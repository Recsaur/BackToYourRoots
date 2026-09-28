extends Node2D
var in_area = false

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

func _process(delta):
	if Input.is_action_pressed("leftclick") and in_area:
		global_position = get_global_mouse_position()
