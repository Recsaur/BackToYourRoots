extends Node2D
var main = preload("res://scenes/register.tscn")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	AudioHandler.mainmenu()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_start_pressed() -> void:
	get_tree().change_scene_to_packed(main)
	pass # Replace with function body.


func _on_credits_pressed() -> void:
	$CanvasLayer.show()
	pass # Replace with function body.
