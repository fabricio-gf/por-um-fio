extends CollisionShape2D
# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	if .collide(b_xform, a, a_xform):
		print("OMG Collision!")
	
	pass

