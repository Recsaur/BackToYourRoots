extends CanvasLayer
var topstation = preload("res://scenes/register.tscn")


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if len(GameController.cupinsides) != 0:
		$toppings.disabled = false
	pass

func _on_toppings_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/register.tscn")
