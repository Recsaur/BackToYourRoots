extends Sprite2D
@onready var outline_material : ShaderMaterial = material

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _on_area_2d_mouse_entered() -> void:
	get_parent().get_parent().in_area = true
	outline_material.set_shader_parameter("outline_color", Color(1.0, 1.0, 1.0, 1.0))

func _on_area_2d_mouse_exited() -> void:
	get_parent().get_parent().in_area = false
	outline_material.set_shader_parameter("outline_color", Color(1.0, 1.0, 1.0, 0.588))
