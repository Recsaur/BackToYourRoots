extends GPUParticles2D

func _ready() -> void:
	one_shot = true
	emitting = true
	AudioHandler.pour()
	restart()
	
	await get_tree()
	await finished
	queue_free()
