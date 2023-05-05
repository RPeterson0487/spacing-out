extends Node2D

export (PackedScene) var laserBolt


func fire():
	spawnLaser()


func spawnLaser():
	var instance = laserBolt.instance()
	var sceneRoot = get_tree().root.get_children()[0]
	instance.parent = get_parent()
	sceneRoot.add_child(instance)
