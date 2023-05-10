extends Area2D

export(Texture) var planetSprite

func _ready():
	$Sprite.texture = planetSprite
