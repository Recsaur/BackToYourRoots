extends Camera2D

var scroll_speed: float = 500.0 
var edge_margin: float = 150.0 

var left_limit = get_viewport_rect().size.x + 480.0
var right_limit = get_viewport_rect().size.x + 500.0

var down_limit = get_viewport_rect().size.y + 310.0
var up_limit = get_viewport_rect().size.y + 330.0


func _process(delta: float) -> void:
	var mouse_pos = get_viewport().get_mouse_position()
	var window_size = get_viewport_rect().size
	
	if mouse_pos.x < edge_margin:
		position.x -= scroll_speed * delta
	elif mouse_pos.x > window_size.x - edge_margin:
		position.x += scroll_speed * delta
		
	if mouse_pos.y < edge_margin:
		position.y -= scroll_speed * delta
	elif mouse_pos.y > window_size.y - edge_margin:
		position.y += scroll_speed * delta
		
	position.x = clamp(position.x, left_limit, right_limit)
	position.y = clamp(position.y, down_limit, up_limit)
