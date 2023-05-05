extends Node2D

#export (PackedScene) var laserBolt
var laserBoltScene = preload("res://LaserBolt.tscn")


func fire():
	if $Cooldown.is_stopped():
		spawnLaser()
		$Cooldown.start()


func spawnLaser():
#	var instance = laserBolt.instance()
#	var sceneRoot = get_tree().root.get_children()[0]
#	instance.parent = get_parent()
#	sceneRoot.add_child(instance)


	var instance = laserBoltScene.instance()
	instance.global_position = global_position
	instance.rotation = global_rotation
	# instance.parent = get_parent() # if the laser class needs to know what its parent is, this is the spot to do it in.
	
	var sceneRoot = get_tree().root.get_children()[0]
	sceneRoot.add_child(instance)
