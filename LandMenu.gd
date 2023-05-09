extends Control

onready var menu = $Menu
onready var ships = $Ships
onready var commodities = $Commodities
onready var hotel = $Hotel


func _ready():
	print("Load Scene")


func _process(delta):
	if Input.is_action_just_pressed("land"):
		toggleLandingMenu()


func toggleLandingMenu():
	visible = !visible
	get_tree().paused = visible


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
	get_tree().reload_current_scene() # This needs to be changed to reload the main scene once added to it.


func _on_BackFromHotel_pressed():
	changeMenuLevel(hotel, menu)


func _on_Launch_pressed():
	toggleLandingMenu()



