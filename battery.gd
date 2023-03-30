extends Area2D

#score will be counting
func _on_body_entered(body):
	body.score += 1
	#body.sprite_2d.scale += Vector2(0.2, 0.2)
	queue_free()
	pass # Replace with function body.
