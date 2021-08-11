extends KinematicBody2D

var move_speed = 5
var speed : Vector2 = Vector2()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	speed = Vector2(0,0)
	
	if Input.is_action_pressed("move_paddle_left"):
		speed.x += move_speed * -1
	
	if Input.is_action_pressed("move_paddle_right"):
		speed.x += move_speed 
	
	move_and_collide(speed)
	
	pass
