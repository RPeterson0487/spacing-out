extends Node2D

#export (PackedScene) var laserBolt
var laserBoltScene = preload("res://LaserBolt.tscn")


func fire():
	if $Cooldown.is_stopped():
		spawnLaser()


func spawnLaser():
#	var instance = laserBolt.instance()
#	var sceneRoot = get_tree().root.get_children()[0]
#	instance.parent = get_parent()
#	sceneRoot.add_child(instance)


	var instance = laserBoltScene.instance()
	instance.global_position = global_position
	instance.rotation = rotation
	add_child(instance)
