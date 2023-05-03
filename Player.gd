extends KinematicBody2D

var acceleration = 50
var maxSpeed = 350
var rotationSpeed = 250
var velocity = Vector2.ZERO


func _physics_process(delta):
	control(delta)


func control(delta):
	var inputVector = Vector2(0,0)
	if Input.is_action_pressed("forwardThrust"):
		inputVector.y = -1
		
	#var inputVector = Vector2(0, Input.get_action_strength("forwardThrust"))
	velocity += inputVector.rotated(rotation) * acceleration
	velocity = velocity.limit_length(maxSpeed)

	if Input.is_action_pressed("rotateLeft"):
		rotate(deg2rad(-rotationSpeed * delta))
	if Input.is_action_pressed("rotateRight"):
		rotate(deg2rad(rotationSpeed * delta))
	
	var oppositeAngle = velocity.angle() + (PI/2) + PI
	if Input.is_action_pressed("rotateOpposite"):
		if velocity.length() != 0:
			if oppositeAngle > (2 * PI):
				oppositeAngle -= (2 * PI)
			if oppositeAngle < 0:
				oppositeAngle += (2 * PI)
			if (abs(oppositeAngle - rotation)) < PI && (oppositeAngle - rotation) > 0: # Is this the "original result" in discord?
				rotate(deg2rad(-rotationSpeed * delta))
			else:
				rotate(deg2rad(rotationSpeed * delta))

	move_and_slide(velocity)
