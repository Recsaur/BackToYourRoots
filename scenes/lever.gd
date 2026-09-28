extends Sprite2D
var salt = preload("res://scenes/salt_particle_fx.tscn")
var SC = preload("res://scenes/sc_particle_fx.tscn")
var volcano = preload("res://scenes/volcano_particle_fx.tscn")

var active = false
var is_hovered = false
@onready var outline_material : ShaderMaterial = material

func _ready() -> void:
	$"../Button".disabled = true

func _process(delta: float) -> void:
	if GameController.tubechoice != "0":
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
	GameController.sapshake += 1
	GameController.RootDraggable = false
	GameController.cupinsides.append(GameController.tubechoice)
	match GameController.tubechoice:
		"Salt Tiles":
			var salt_instance = salt.instantiate()
			salt_instance.global_position = $"../../Marker2D".global_position
			get_parent().get_parent().get_parent().add_child(salt_instance)
		"Sugar Cane":
			var sc_instance = SC.instantiate()
			sc_instance.global_position = $"../../Marker2D".global_position
			get_parent().get_parent().get_parent().add_child(sc_instance)
		"Volcanic":
			var vol_instance = volcano.instantiate()
			vol_instance.global_position = $"../../Marker2D".global_position
			get_parent().get_parent().get_parent().add_child(vol_instance)
	GameController.tubechoice = "0"
	var tween = create_tween()
	tween.tween_property($"..","rotation",deg_to_rad(55),0.25).set_trans(Tween.TRANS_BACK)
	print("PULLEED")
	await get_tree().create_timer(3).timeout
	GameController.sapshake = 0
	var bavctween = create_tween()
	bavctween.tween_property($"..","rotation",deg_to_rad(0),0.25).set_trans(Tween.TRANS_BACK)
	GameController.RootDraggable = true
