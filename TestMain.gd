extends Node2D



func _ready():
	$Player.connect("openLandingMenu",$CanvasLayer/LandMenu, "showLandingMenu")
