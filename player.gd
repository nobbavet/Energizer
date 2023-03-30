extends CharacterBody2D

const SPEED = 80.0
const JUMP_VELOCITY = -250.0
#const ACCEL = 50

#gravity syncing with project
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	#old movement code
	#move_and_collide(Vector2(0, 1))
	#if Input.is_action_pressed("ui_right"):
	#	position.x += 2
	#if Input.is_action_pressed("ui_left"):
	#	position.x -= 2
		
	#Jumping system
	if not is_on_floor():
		velocity.y += gravity * delta
		
	if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		velocity.y = JUMP_VELOCITY
	
	#acceleration because it feels smoother
	velocity.x = clamp(velocity.x, -SPEED, SPEED)
		
	#movement no more failure :D	
	var direction = Input.get_axis("ui_left", "ui_right")
	if direction:
		velocity.x = direction * SPEED
	else:
			velocity.x = move_toward(velocity.x, 0, 0.6)
		
	move_and_slide()	
		
	pass
