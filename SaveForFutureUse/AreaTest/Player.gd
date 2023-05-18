extends CharacterBody2D
var acceleration = 50
var max_speed = 200



func _physics_process(delta):
	velocity += get_input_dir() * acceleration
	if velocity.length() > max_speed:
		velocity = velocity.normalized() * max_speed
	velocity = velocity.lerp(Vector2.ZERO, 0.1)
	move_and_slide()

func get_input_dir():
	var dir = Vector2(0, 0)
	if Input.is_action_pressed("up"):
		dir.y -= 1
	if Input.is_action_pressed("down"):
		dir.y += 1
	if Input.is_action_pressed("right"):
		dir.x += 1
	if Input.is_action_pressed("left"):
		dir.x -= 1
	return dir
