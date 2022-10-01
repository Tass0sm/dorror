extends Spatial

var score = 0

func game_over():
	$UI.show_game_over()

# Called when the node enters the scene tree for the first time.
func _ready():
	print("start")
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if $Conflict.is_finished:
		game_over()
		
	print($Conflict/Door.open_level)
	$UI.update_progress($Conflict/Door.open_level)
	
	pass
