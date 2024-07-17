extends StaticBody3D


var interacible = true
var opened = false

func interact():
	if get_parent().get_parent().locked == true && get_parent().get_parent().key == null:
		get_parent().get_parent().locked == false
	if interacible == true && get_parent().get_parent().locked == false:
		interacible = false
		opened = !opened
		if opened == false:
			$AnimationPlayer.play("Close")
		if opened == true:
			$AnimationPlayer.play("Open")
		await  get_tree().create_timer(1.0, false).timeout
		interacible = true
	
	if interacible == true && get_parent().get_parent().locked == true:
		interacible = false
		$AnimationPlayer.play("locked")
		await get_tree().create_timer(0.7, false).timeout
		interacible = true
