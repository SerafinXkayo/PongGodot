extends CharacterBody2D
#Codigo para dos personas
var speed = 500

func _physics_process(delta):
	velocity.y = 0
	
	if Input.is_action_pressed("move_up"):
		velocity.y = -1
	elif Input.is_action_pressed("move_down"):
		velocity.y = 1
	
	velocity.y *= speed
	
	move_and_collide(velocity * delta)
