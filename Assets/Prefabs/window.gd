extends StaticBody2D

@onready var winnormal = $Winnormal

@onready var winsad = $Winsad



func _on_area_2d_body_entered(body):
	if body.is_in_group("explosive"):
		winnormal.hide()
		winsad.show()
		Global.thingsLeft -= 1
	pass # Replace with function body.
