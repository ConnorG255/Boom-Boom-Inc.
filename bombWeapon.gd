extends Node2D

var speed = 200
var Bomba = preload("res://bomb.tscn")
@onready var firepoint = $firepoint



# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func fire():
	var bomb = Bomba.instantiate()
	bomb.position = firepoint.global_position
	bomb.linear_velocity = Vector2(speed,0).rotated(rotation)
	get_tree().get_root().call_deferred("add_child", bomb)
	
func _process(delta): 
	if Input.is_action_just_pressed("LMB"):
		fire()
	look_at(get_global_mouse_position())
	pass
