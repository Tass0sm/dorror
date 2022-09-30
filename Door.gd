extends CSGBox


# Declare member variables here. Examples:
var open_level = 0
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func open():
	if open_level < 5:
		open_level += 1

func close():
	if open_level > 0:
		open_level -= 1

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
