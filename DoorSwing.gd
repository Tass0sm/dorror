extends MeshInstance

func _input(event):
		
	if event.is_action_pressed("push_left"):
		rotation_degrees += Vector3(0,5,0)
		
		
		#$Door.close()
		#get_node("Conflict.BlenderDoor").rotate(Vector3(0,1,0),0)
		#get_node("Conflict.BlenderDoor").rotate_y(deg2rad(1.0))
	
	if event.is_action_pressed("push_right"):
		rotation_degrees += Vector3(0,-5,0)
		#yield(get_tree().create_timer(0.3), "timeout")
		
		
		#get_node("Conflict.BlenderDoor").rotate(Vector3(0,1,0),0)
		#$Door.open()
		#get_node("Conflict.BlenderDoor").rotate_y(deg2rad(-1.0))
	#if $Door.is_closed:
		#print("closer wins")
	#if $Door.is_opened:
		#print("opener wins")
	pass
