extends RigidBody2D

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

export var p_number = 0

func _ready():
	set_process_input(true)
	# Called every time the node is added to the scene.
	# Initialization here
	pass

func _input(event):
	if event.is_action_pressed(str("left_joy_p",p_number)): print("left ", p_number)
	if event.is_action_pressed(str("right_joy_p",p_number)): print("right ", p_number)
