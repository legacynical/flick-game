extends CharacterBody2D

var positionA: Vector2
var player_direction: Vector2
const SPEED = 300

func _process(delta):
	if Input.is_action_just_pressed("left-mouse"):
		positionA = get_global_mouse_position()
		
	if Input.is_action_just_released("left-mouse"):
		print(positionA)	
		print(get_global_mouse_position())
		player_direction = Vector2(positionA - get_global_mouse_position()).normalized()
		print(player_direction)	
		velocity = player_direction * SPEED
	move_and_collide(velocity * delta)
	
func _physics_process(delta):
	var collision_info = move_and_collide(velocity * delta)
	if collision_info:
		velocity = velocity.bounce(collision_info.get_normal())
