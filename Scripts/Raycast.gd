extends RayCast3D

var int_text

func _ready():
	int_text = get_node("/root/" + get_tree().current_scene.name + "/UI/Interact_text")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if is_colliding():
		var hit = get_collider()
		if hit.has_method("interact"):
			int_text.visible = true
			if Input.is_action_just_pressed("Interact"):
				hit.interact()
		else:
			int_text.visible = false
	else :
		int_text.visible = false
