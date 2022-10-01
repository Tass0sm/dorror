extends Node

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_pressed("push_left"):
		$Door.close()
	if Input.is_action_pressed("push_right"):
		$Door.open()
		
	if $Door.is_closed:
		print("closer wins")
	if $Door.is_opened:
		print("opener wins")
	
	pass
