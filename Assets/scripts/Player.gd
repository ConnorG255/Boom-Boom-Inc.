extends CharacterBody2D

@export var SPEED = 200

func movement():
	var direction = Input.get_vector("A", "D", "W", "S")
	velocity = direction * SPEED
	move_and_slide()
	
func _physics_process(delta):
	movement()
	

