extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_area_2d_body_entered(body):
	get_tree().change_scene_to_file("res://Scenes/l_2.tscn")
	Startingscene.thingsperlevel = 5.00
	Global.thingsLeft = 5.00
	pass # Replace with function body.
