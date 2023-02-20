extends Node3D


# Called when the node enters the scene tree for the first time.
func _ready():
	var VR = XRServer.find_interface("OpenXR")
	if VR and VR.initialize():
		get_viewport().use_xr = true
	else:
		print('OpenXR not initialized')

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
