extends Area2D
	
@onready var required_batteries_text = $required_batteries_text
#portal pass through
var required_batteries = {
	"Level_0" : "0",
	"Level_1" : "5",
	"Level_2" : "10" 
}

func _ready():
	var currentLevel = get_tree().get_current_scene().get_name()
	required_batteries_text.text = required_batteries[currentLevel]
	pass


#scene switc hing switches scene directly and not when u enter... maybe change it tomorow
func _on_body_entered(body):
	var currentLevel = get_tree().get_current_scene().get_name()
	if body.is_in_group("player"):
		if body.score >= int(required_batteries[currentLevel]):
			match (currentLevel):
				"Level_0":
					get_tree().change_scene_to_file("res://level_1.tscn")
				"Level_1":
					get_tree().change_scene_to_file("res://level_2.tscn")
		else:
			print ("You don't have enough batteries")

