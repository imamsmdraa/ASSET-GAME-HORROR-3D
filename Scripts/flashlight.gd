extends SpotLight3D

var pick_up = false

# Called when the node enters the scene tree for the first time.
func _process(delta):
	if Input.is_action_just_pressed("FlashLight") && pick_up == true:
		visible = !visible
		$Toggle.play()
