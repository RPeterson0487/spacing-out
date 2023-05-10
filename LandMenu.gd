extends Control

onready var menu = $Menu
onready var ships = $Ships
onready var commodities = $Commodities
onready var hotel = $Hotel

onready var menuArray = [ships, commodities, hotel]
var inOrbit = false


func _process(delta):
	if Input.is_action_just_pressed("land") and inOrbit == true:
		if !visible:
			showLandingMenu()
		else:
			hideLandingMenu()


func showLandingMenu():
	visible = true
	get_tree().paused = true


func hideLandingMenu():
	for i in menuArray:
		i.hide()
	menu.show()
	
	visible = false
	get_tree().paused = false


func changeMenuLevel(from, to):
	to.show()
	from.hide()


func _on_Ships_pressed():
	changeMenuLevel(menu, ships)


func _on_BackFromShips_pressed():
	changeMenuLevel(ships, menu)


func _on_Commodities_pressed():
	changeMenuLevel(menu, commodities)


func _on_BackFromCommodities_pressed():
	changeMenuLevel(commodities, menu)


func _on_Hotel_pressed():
	changeMenuLevel(menu, hotel)


func _on_Rest_pressed():
	# get_tree().reload_current_scene() # This needs to be changed to reload the main scene once added to it.
	pass

func _on_BackFromHotel_pressed():
	changeMenuLevel(hotel, menu)


func _on_Launch_pressed():
	hideLandingMenu()


func _on_Landable_body_entered(body):
	inOrbit = true


func _on_Landable_body_exited(body):
	inOrbit = false
