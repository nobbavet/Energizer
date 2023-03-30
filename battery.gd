extends Area2D

#score will be counting
func _on_body_entered(body):
	if body.is_in_group("player"):
		body.animated_sprite_2d.speed_scale += 2
		body.score += 1
		body.SPEED += 30
		body.JUMP_VELOCITY -= 50
	#body.sprite_2d.scale += Vector2(0.2, 0.2)
	queue_free()
	pass # Replace with function body.
