extends CanvasLayer
var rootstation = preload("res://scenes/makeroots.tscn")


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_roots_pressed() -> void:
	print("EPRERE")
	GameController.talk1 = true
	get_tree().change_scene_to_file("res://scenes/makeroots.tscn")


func _on_register_pressed() -> void:
	pass # Replace with function body.
