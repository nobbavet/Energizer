extends Area2D

#func _on_body_entered(_body):
#	if body.is_in_group("player"):
#		get_tree().change_scene("res://Level_" + str(int(get_tree().current_scene.name) + 1) + ".tscn")		

#scene switc hing switches scene directly and not when u enter... maybe change it tomorow
func _on_body_entered(body):
	var currentLevel = get_tree().get_current_scene().get_name()
	if body.is_in_group("player"):
		match (currentLevel):
			"Level_0":
				get_tree().change_scene_to_file("res://level_1.tscn")
			"Level_1":
				print ("No other levels yet")

