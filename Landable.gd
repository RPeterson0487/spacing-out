extends Area2D

signal enteredOrbit
signal exitedOrbit

export(Texture) var planetSprite

func _ready():
	$Sprite.texture = planetSprite



func _on_Landable_body_entered(body):
	print("Landable: Body Entered")
	emit_signal("enteredOrbit")


func _on_Landable_body_exited(body):
	print("Landable: Body Exited")
	emit_signal("exitedOrbit")
