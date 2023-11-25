extends CharacterBody2D
@onready var player = $Player

@export var SPEED = 200;
var upodown = true
var direction = 0
func anim():
	if velocity != Vector2(0,0):
		if upodown:
			player.position.y += 0.5
			await(get_tree().create_timer(0.1).timeout)
			upodown = false
		else:
			player.position.y -= 0.5
			await(get_tree().create_timer(0.1).timeout)
			upodown = true

		pass
func movement():
	direction = Input.get_vector("A", "D", "W", "S");
	velocity = direction * SPEED;
	
	move_and_slide();
	
func _physics_process(delta):
	movement();
	anim()
	

