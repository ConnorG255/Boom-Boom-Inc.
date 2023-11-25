extends StaticBody2D

func _process(delta):
	if Global.thingsLeft == 0:
		queue_free()
	pass
