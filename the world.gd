extends Node2D
@export var snormal : Sprite2D
@export var ssad : Sprite2D
@export var explosion : PackedScene
var exploded = false

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_just_pressed("E") and exploded == false:
		exploded = true
		snormal.hide()
		ssad.show()
		Global.thingsLeft -= 1.00
		
		var eparticle = explosion.instantiate();
		eparticle.position = global_position;
		eparticle.rotation = global_rotation;
		eparticle.emitting = true;
		get_tree().current_scene.add_child(eparticle);
	pass
