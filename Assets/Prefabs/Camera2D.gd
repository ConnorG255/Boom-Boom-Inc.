extends Camera2D


# Called when the node enters the scene tree for the first time.
func _ready():
	if get_tree().get_current_scene().get_name() == "za warudo":
		set_zoom(Vector2(2,2))
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
