extends Spatial

enum {OPENER_WON, CLOSER_WON}

# Declare member variables here. Examples:
var is_finished = false
var outcome

var open_level = 0
var open_min = 0
var open_step = 0.1
var open_max = 1.0

func open_door():
	if open_level < open_max:
		open_level += open_step

func close_door():
	if open_level > open_min:
		open_level -= open_step

func _input(event):
	if event.is_action_pressed("push_left"):
		close_door()
	if event.is_action_pressed("push_right"):
		open_door()
		
# Called when the node enters the scene tree for the first time.
func _ready():
	open_level = (open_max - open_min) / 2
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if open_level <= open_min:
		is_finished = true
		outcome = CLOSER_WON
	if open_level >= open_max:
		is_finished = true
		outcome = OPENER_WON
		
	$AnimationTree["parameters/Seek/seek_position"] = open_level
	print(open_level)
		
	pass
