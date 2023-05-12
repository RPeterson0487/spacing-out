extends Control

onready var menu = $Menu
onready var ships = $Ships
onready var commodities = $Commodities
onready var hotel = $Hotel

onready var menuArray = [ships, commodities, hotel]

func _physics_process(_delta):
	if visible and Input.is_action_just_pressed("ui_cancel"):
		hideLandingMenu()


func showLandingMenu():
	
	visible = true
	get_tree().paused = true


func hideLandingMenu():
	print("LandMenu: Launch clicked, resetting menu and setting visible to False.")
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
