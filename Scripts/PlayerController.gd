extends KinematicBody2D

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

const GRAVITY = 250.0
const MOVESPEED = 150.0
const JUMPSPEED = 200.0
var vel = Vector2()
var grounded = false
export var p_number = 0

onready var corda = get_node("../Corda")

func _ready():
	set_process(true)
	set_fixed_process(true)
	set_process_input(true)
	# Called every time the node is added to the scene.
	# Initialization here
	pass
	
func _input(event):
	if event.is_action_pressed(str("jump_joy_p",p_number)) && grounded == true:
		vel.y = -JUMPSPEED*get_scale().x
		grounded = false
	
func _fixed_process(delta):
	
	vel.y += delta * GRAVITY

	if Input.is_action_pressed(str("left_joy_p",p_number)): 
		vel.x = -MOVESPEED
	elif Input.is_action_pressed(str("right_joy_p",p_number)): 
		vel.x = MOVESPEED
	else: 
		vel.x = 0
		
	
	var motion = vel * delta
	move(motion)
	
	if (is_colliding()):
        var n = get_collision_normal()
        motion = n.slide(motion)
        vel = n.slide(vel)
        move(motion)

	motion = corda.getDistance(p_number)
	move(motion)
	
	#if motion.y < 0:
	#	if motion.x == 0:
	#		vel.y = 0
	#	else:
	#		vel.y -= delta * GRAVITY
	

func _on_Area2D_body_enter( body ):
	grounded = true
