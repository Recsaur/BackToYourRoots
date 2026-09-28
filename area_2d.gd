extends Area2D

func _input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton:
		if event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
			print("DINGGG")
			AudioHandler.bell()
			var tween = create_tween()
			tween.tween_property($"../Sprite2D","scale",Vector2(1.25,0.75),0.125).set_trans(Tween.TRANS_BACK)
			tween.tween_property($"../Sprite2D","scale",Vector2(1,1),0.25).set_trans(Tween.TRANS_BACK)
