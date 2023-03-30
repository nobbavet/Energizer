extends Area2D

#func _on_body_entered(_body):
#	if body.is_in_group("player"):
#		get_tree().change_scene("res://Level_" + str(int(get_tree().current_scene.name) + 1) + ".tscn")		

#scene switc hing switches scene directly and not when u enter... maybe change it tomorow
func _on_body_entered(body):
	get_tree().change_scene_to(load("res://level_1.tscn"))

