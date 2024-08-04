extends Area3D

@export var animationPlayer : AnimationPlayer
@export var anim_name : String
var token = 0


func trigger_entered(body):
	if body == get_node("/root/" + get_tree().current_scene.name + "/Player") && token == 0:
		animationPlayer.play(anim_name)
		token = 1
	 
