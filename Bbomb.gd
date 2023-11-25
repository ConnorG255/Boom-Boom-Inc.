extends RigidBody2D

@export var explosion : PackedScene
@onready var bomb = $Bbomb
@onready var sound = preload("res://Assets/Prefabs/explosionsound.tscn")
@onready var radius = preload("res://Assets/Prefabs/")

func _ready():
	
	pass
	
func _on_area_2d_body_entered(body):
	
	if body.is_in_group("explode"):
		
		
		var eparticle = explosion.instantiate();
		eparticle.position = global_position;
		eparticle.rotation = global_rotation;
		eparticle.emitting = true;
		get_tree().current_scene.add_child(eparticle);
		var s = sound.instantiate();
		s.position = global_position;
		s.rotation = global_rotation;
		get_tree().current_scene.add_child(s);
		
		queue_free();
	
	pass # Replace with function body.
