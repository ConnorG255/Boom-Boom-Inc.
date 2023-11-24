extends Label

var totalinlevel 
# Called when the node enters the scene tree for the first time.
func _ready():
	totalinlevel = Startingscene.thingsperlevel
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	#print(str(Global.thingsLeft)+"/"+str(totalinlevel))
	var percent = -((Global.thingsLeft-totalinlevel)/totalinlevel)*100
	if percent == -0:
		self.text =  "0%"
	else:
		self.text =  str(percent)+"%"
	pass
