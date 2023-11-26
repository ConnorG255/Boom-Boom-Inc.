extends StaticBody2D

var real = 0
func _on_area_2d_body_entered(body):
	if body.is_in_group("explosive"):
		get_tree().quit()
		#print(10/real)
	pass # Replace with function body.
