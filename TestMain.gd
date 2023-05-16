extends Node2D

var landableScene = preload("res://Landable.tscn")

func _ready():
	randomize()
	$Player.connect("openLandingMenu",$CanvasLayer/LandMenu, "showLandingMenu")
	setupLandables()
	
	
func setupLandables():
	var numberOfLandables = 3
	var radiusIncrements = Vector2(1500,0)
	var center = Vector2.ZERO
	
	for i in range(numberOfLandables):
		var distance = radiusIncrements * i
		var spawnPosition = center + distance.rotated(deg2rad(rand_range(0,360)))
		var instance = landableScene.instance()
		
		instance.position = spawnPosition
		add_child(instance)
