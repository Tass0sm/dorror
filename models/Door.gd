extends CSGBox

# Declare member variables here. Examples:
var open_level = 0
var open_min = 0
var open_max = 10
var is_opened = false
var is_closed = false

# Called when the node enters the scene tree for the first time.
func _ready():
	open_level = 5
	pass # Replace with function body.

func open():
	if open_level < open_max:
		open_level += 1

func close():
	if open_level > 0:
		open_level -= 1

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if open_level == open_min:
		is_opened = false
		is_closed = true
	if open_level == open_max:
		is_opened = true
		is_closed = false
		
	pass
