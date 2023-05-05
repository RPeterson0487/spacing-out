extends Area2D

var speed = 1800
var damage = 20
var velocity = Vector2.ZERO
var parent

func _ready():
	var direction = parent.global_transorm.x
	velocity = direction * (speed + parent.velocity.length())
	rotation = direction.angle()


func _physics_process(delta):
	position += velocity * delta
