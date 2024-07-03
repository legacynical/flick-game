extends CharacterBody2D


var positionA: Vector2
var player_direction: Vector2
const speed = 200


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	if Input.is_action_just_pressed("left-mouse"):
		positionA = get_global_mouse_position()
		
	
	if Input.is_action_just_released("left-mouse"):
		print(positionA)	
		print(get_global_mouse_position())
		player_direction = Vector2(positionA - get_global_mouse_position()).normalized()
		print(player_direction)
	position += player_direction * speed * delta
