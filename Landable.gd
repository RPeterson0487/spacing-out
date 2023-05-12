extends Area2D

export(Texture) var planetSprite

func _ready():
	$Sprite.texture = planetSprite


func _on_Landable_body_entered(body):
	if body is Player:
		print("Landable: ", body.name, " has entered ", name, "'s orbit.  Calling Player.enterOrbit.")
		body.enterOrbit()


func _on_Landable_body_exited(body):
	if body is Player:
		print("Landable: ", body.name, " has left ", name, "'s orbit.  Calling Player.exitOrbit.")
		body.exitOrbit()
