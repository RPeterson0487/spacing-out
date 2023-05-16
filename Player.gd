extends KinematicBody2D

class_name Player

onready var weaponArray = [$LaserCannon, $LaserCannon2, $LaserCannon3]
var acceleration = 10 # Test: 30, 45
var maxSpeed = 350 # Test 220
var rotationSpeed = 250 # 45

var velocity = Vector2.ZERO
var onLandable = false
var fireModeStaggered = false

signal openLandingMenu


func _physics_process(delta):
	control(delta)


func control(delta):
	var inputVector = Vector2(0,0)
	if Input.is_action_pressed("forwardThrust"):
		inputVector.y = -1
		
	velocity += inputVector.rotated(rotation) * acceleration
	velocity = velocity.limit_length(maxSpeed)

	if Input.is_action_pressed("rotateLeft"):
		rotate(deg2rad(-rotationSpeed * delta))
	if Input.is_action_pressed("rotateRight"):
		rotate(deg2rad(rotationSpeed * delta))
	
	if Input.is_action_pressed("rotateOpposite") && velocity.length() != 0:
		var oppositeVelocity = velocity * -1
		var oppositeAngle = fposmod(oppositeVelocity.angle() + (PI / 2), (PI * 2))
		var wrappedRotation = fposmod(rotation, (PI * 2))

		if (abs(wrappedRotation - oppositeAngle)) < 0.1:
			rotation = oppositeAngle
		elif (abs(wrappedRotation - oppositeAngle)) < PI && (wrappedRotation - oppositeAngle) > 0 \
				or (abs(wrappedRotation - oppositeAngle)) > PI && (wrappedRotation - oppositeAngle) < 0:
			rotate(deg2rad(-rotationSpeed * delta))
		else:
			rotate(deg2rad(rotationSpeed * delta))
	
	if Input.is_action_pressed("fullStop") && velocity.length() <= 75:
		velocity = Vector2.ZERO

	move_and_slide(velocity)
	
	if Input.is_action_pressed("shoot") and weaponArray.size() != 0:
		for i in weaponArray:
			i.fire()
	
	if Input.is_action_just_pressed("land") and onLandable == true:
		emit_signal("openLandingMenu")



func enterOrbit():
	onLandable = true


func exitOrbit():
	onLandable = false
