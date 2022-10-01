extends Node

enum {OPENER_WON, CLOSER_WON}

# Declare member variables here. Examples:
var is_finished = false
var outcome

func _input(event):
	if event.is_action_pressed("push_left"):
		$Door.close()
	if event.is_action_pressed("push_right"):
		$Door.open()
		
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):	
	if $Door.is_closed:
		is_finished = true
		outcome = CLOSER_WON
	if $Door.is_opened:
		is_finished = true
		outcome = OPENER_WON
	
	pass
