extends Sprite2D

@onready var outline_material : ShaderMaterial = material

func _ready() -> void:
	pass

func _process(delta: float) -> void:
	if GameController.tubechoice == 3 and GameController.HoldingRoot == false:
		print("AYYY 3RD TUBE")
	if GameController.HoldingRoot:
		material = outline_material
	else:
		material = null

func _on_area_2d_area_entered(area: Area2D) -> void:
	if area.is_in_group("root"):
		print("ASFASASF")
		outline_material.set_shader_parameter("outline_color", Color(1.0, 1.0, 1.0, 1.0))
		GameController.tubechoice = 3
func _on_area_2d_area_exited(area: Area2D) -> void:
	outline_material.set_shader_parameter("outline_color", Color(1.0, 1.0, 1.0, 0.49))
	GameController.tubechoice = 0
