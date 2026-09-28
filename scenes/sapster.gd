extends Sprite2D
var ShakeStrength = 0.0
var spriteog:Vector2 = Vector2.ZERO
@onready var sprite = $"."

func _ready() -> void:
	spriteog = sprite.position
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if GameController.sapshake > 0.0:
		sprite.position = spriteog + Vector2(randf_range(-GameController.sapshake,GameController.sapshake),randf_range(-GameController.sapshake,GameController.sapshake))
