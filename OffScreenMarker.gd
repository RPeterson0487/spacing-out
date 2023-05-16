extends Node2D

onready var sprite = $Sprite

func _process(delta):
	var canvas = get_canvas_transform()
	var top_left = -canvas.origin / canvas.get_scale()
	var size = get_viewport_rect().size / canvas.get_scale()
	
	setMarkerPosition(Rect2(top_left, size))
	setMarkerRotation()


func setMarkerPosition(bounds: Rect2):
	sprite.global_position.x = clamp(global_position.x, bounds.position.x, bounds.end.x)
	sprite.global_position.y = clamp(global_position.y, bounds.position.y, bounds.end.y)
	
	if bounds.has_point(global_position):
		hide()
	else:
		show()


func setMarkerRotation():
	var angle = (global_position - sprite.global_position).angle()
	sprite.global_rotation = angle
