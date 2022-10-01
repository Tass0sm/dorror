extends Spatial


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
	
		
func SpaceBarhold():
		if !Input.is_action_pressed("SpaceBar"):
			return
		yield(get_tree().create_timer(5),"timeout")
		if !Input.is_action_pressed("SpaceBar"):
			return
		rotation_degrees += Vector3(0,1,0)
		print("AAAAAAAAAAAAAAAAAAAH")
		#what you want to happen if button is still held
		pass
		
		# Called when the node enters the scene tree for the first time.
#func _ready():
	#rotation_degrees = Vector3(0,0,0)
	#pass # Replace with function body.
#func _physics_process(delta):
	#rotation_degrees += Vector3(0,1,0)
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_just_pressed("SpaceBar"):
		SpaceBarhold()
		
	if Input.is_action_pressed("push_left"):
		yield(get_tree().create_timer(0.3), "timeout")
		rotation_degrees += Vector3(0,1,0)
		yield(get_tree().create_timer(0.3), "timeout")
		
		#$Door.close()
		#get_node("Conflict.BlenderDoor").rotate(Vector3(0,1,0),0)
		#get_node("Conflict.BlenderDoor").rotate_y(deg2rad(1.0))
	if Input.is_action_pressed("push_right"):
		yield(get_tree().create_timer(0.3), "timeout")
		rotation_degrees += Vector3(0,-1,0)
		yield(get_tree().create_timer(0.3), "timeout")
		
		#get_node("Conflict.BlenderDoor").rotate(Vector3(0,1,0),0)
		#$Door.open()
		#get_node("Conflict.BlenderDoor").rotate_y(deg2rad(-1.0))
	#if $Door.is_closed:
		#print("closer wins")
	#if $Door.is_opened:
		#print("opener wins")
	pass
	pass
