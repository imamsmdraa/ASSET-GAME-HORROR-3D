extends Node3D

# Called when the node enters the scene tree for the first time.
func _ready():
	$CutScane_anim_player.play("Beginning")
	$Cutscane_camera.current = true
	await get_tree().create_timer(6.0, false).timeout
	get_node("/root/" + get_tree().current_scene.name + "/Player").movable = true
	get_node("/root/" + get_tree().current_scene.name + "/Player/head/Camera3D").current = true
	# membuat camera pada posisi tetap walaupun mouse digerakkan
	get_node("/root/" + get_tree().current_scene.name + "/Player/head").movable = true
	$Cutscane_camera.current = false
	queue_free()
