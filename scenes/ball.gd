extends RigidBody2D


var rng = RandomNumberGenerator.new()

# Called when the node enters the scene tree for the first time.
func _ready():
	rng.randomize()
	apply_central_impulse(Vector2(0, 400))


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	





func _on_ball_body_shape_entered(body_id, body, body_shape, local_shape):
	print(body.name)
	if (body.is_in_group("paddle")):
		var random_number = rng.randf_range(-100, 100)
		apply_central_impulse(Vector2(random_number, 0))
	if (body.is_in_group("Goal")):
		body.queue_free()
	if (body.is_in_group("DeathZone")):
		get_tree().reload_current_scene()
