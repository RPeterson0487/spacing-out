extends Area2D

export(Array, Texture) var landableSpriteArray: Array = [
	preload("res://assets/art/finalMidnight500.png"),
	preload("res://assets/art/redPlanet500.png"),
	preload("res://assets/art/yellowPlanet500.png")
]

func _ready():
	pickTexture()


func _on_Landable_body_entered(body):
	if body is Player:
		body.enterOrbit()


func _on_Landable_body_exited(body):
	if body is Player:
		body.exitOrbit()


func pickTexture():
	$Sprite.texture = landableSpriteArray[randi() % landableSpriteArray.size()]
	# var item = array[randi() % array.size()]
