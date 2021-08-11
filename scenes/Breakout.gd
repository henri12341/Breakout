extends Node2D

func _ready():
	pause_mode = Node.PAUSE_MODE_PROCESS

func _process(delta):
	if (Input.is_action_just_pressed("pause_game")):
		var is_game_paused = get_tree().paused
		is_game_paused = !is_game_paused
		get_tree().paused = is_game_paused;
