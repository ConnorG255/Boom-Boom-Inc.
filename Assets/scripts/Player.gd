extends CharacterBody2D

const SPEED = 300.0

func movement():
	var direction = Input.get_vector("A", "D", "W", "S")
	velocity = direction * SPEED
	move_and_slide()
	
func _physics_process(delta):
	movement()
	

