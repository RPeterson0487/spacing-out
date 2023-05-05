extends Area2D

var projectileSpeed = 1800
var damage = 20


func _physics_process(delta):
	global_position += Vector2(0, -1).rotated(rotation) * projectileSpeed * delta

func _on_VisibilityNotifier2D_screen_exited():
	queue_free()
