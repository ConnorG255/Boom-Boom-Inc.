extends RigidBody2D

@export var explosion : PackedScene






func _on_area_2d_body_entered(body):
	if body.is_in_group("explode"):
		var eparticle = explosion.instantiate();
		eparticle.position = global_position;
		eparticle.rotation = global_rotation;
		eparticle.emitting = true;
		get_tree().current_scene.add_child(eparticle);
	
		queue_free();
	
	pass # Replace with function body.
