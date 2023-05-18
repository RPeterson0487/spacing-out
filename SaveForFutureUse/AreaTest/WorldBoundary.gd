extends StaticBody2D


var circle_size = 300
var number_of_points = 100


func _ready():
	# Put the boundary center in the middle of the screen.
	global_position = DisplayServer.window_get_size() / 2
	
	# Create points list.
	var points = getCirclePoints(circle_size, number_of_points)
	
	# Copy the first point and add it to the end, so that the circle completes.
	points.append(points[0])
	
	# Create visual lines.
	var line = Line2D.new()
	for i in points:
		line.add_point(i)
	line.width = 2
	add_child(line)
	
	# Create collision shapes for each pair of points in the line.
	for i in line.points.size() - 1:
		var new_shape = CollisionShape2D.new()
		add_child(new_shape)
		var segment = SegmentShape2D.new()
		segment.a = line.points[i]
		segment.b = line.points[i + 1]
		new_shape.shape = segment


func getCirclePoints(radius: float, pointCount: int) -> PackedVector2Array:
	# Create a circle with math and return the points of the circle.
	var points := PackedVector2Array()
	var angleDelta := (2 * PI) / pointCount

	for i in range(pointCount):
		var angle := i * angleDelta
		var x := radius * cos(angle)
		var y := radius * sin(angle)
		points.append(Vector2(x, y))
	
	return points
