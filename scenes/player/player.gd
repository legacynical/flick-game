extends CharacterBody2D


var positionA: Vector2
var player_direction: Vector2
const SPEED = 300


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
	

	position += player_direction * SPEED * delta

	# Using move_and_collide.
	var collision1 = move_and_collide(velocity * delta)
	if collision1:
		print("I collided with ", collision1.get_collider().name)

	# Using move_and_slide.
	#move_and_slide()
	#for i in get_slide_collision_count():
		#var collision2 = get_slide_collision(i)
		#print("I collided with ", collision2.get_collider().name)
