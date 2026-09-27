extends Sprite2D

@onready var outline_material : ShaderMaterial = material

func _ready() -> void:
	pass

func _process(delta: float) -> void:
	print(GameController.cupinsides,"cup in")
	if GameController.tubechoice == 1 and GameController.HoldingRoot == false:
		print(GameController.cupinsides,"cup in")
	print(GameController.tubechoice)
	if GameController.HoldingRoot:
		material = outline_material
	else:
		material = null

func _on_area_2d_area_entered(area: Area2D) -> void:
	if area.is_in_group("root"):
		print("ASFASASF")
		outline_material.set_shader_parameter("outline_color", Color(1.0, 1.0, 1.0, 1.0))
		GameController.tubechoice = 1
		
func _on_area_2d_area_exited(area: Area2D) -> void:
	outline_material.set_shader_parameter("outline_color", Color(1.0, 1.0, 1.0, 0.49))
	GameController.tubechoice = 0
