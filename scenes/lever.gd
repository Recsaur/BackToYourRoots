extends Sprite2D

var active = false
var is_hovered = false
@onready var outline_material : ShaderMaterial = material

func _ready() -> void:
	$"../Button".disabled = true

func _process(delta: float) -> void:
	if GameController.tubechoice != 0:
		if not active:
			active = true
			material = outline_material
			outline_material.set_shader_parameter("outline_color", Color(1.0, 1.0, 1.0, 0.49))
	else:
		if active:
			active = false
			material = null
			is_hovered = false
			$"../Button".disabled = true

func _on_area_2d_mouse_entered() -> void:
	if active:
		is_hovered = true
		$"../Button".disabled = false
		outline_material.set_shader_parameter("outline_color", Color(1.0, 1.0, 1.0, 1.0))
		print("EERERE")

func _on_area_2d_mouse_exited() -> void:
	if active:
		is_hovered = false
		$"../Button".disabled = true
		outline_material.set_shader_parameter("outline_color", Color(1.0, 1.0, 1.0, 0.49))

func _on_button_pressed() -> void:
	GameController.RootDraggable = false
	GameController.cupinsides.append(GameController.tubechoice)
	GameController.tubechoice = 0
	var tween = create_tween()
	tween.tween_property($"..","rotation",deg_to_rad(55),0.25).set_trans(Tween.TRANS_BACK)
	print("PULLEED")
