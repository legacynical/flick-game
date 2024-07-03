extends CharacterBody2D



# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	if Input.is_action_just_pressed("left-mouse"):
		var positionA = get_global_mouse_position()
		print(positionA)	
	
	if Input.is_action_just_released("left-mouse"):
		var positionB = get_global_mouse_position()
		print(positionB)
