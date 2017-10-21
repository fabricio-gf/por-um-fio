extends Node2D

const DISTANCE_MAX = 300
const DISTANCE_MIN = 0

const SCALE_MAX = 1
const SCALE_MIN = 0.2

onready var p1 = get_node("../Player 1")
onready var p2 = get_node("../Player 2")

var percentage
var scale
var distance

func _ready():
	set_process(true)
	set_fixed_process(true)
	
func _process(delta):
    update()

func _fixed_process(delta):
	calculateScale()
	
func _draw():
	draw_line(p1.get_pos(), p2.get_pos(), Color(255, 0, 0), 10.0)
	
func calculateScale():
	distance = p1.get_pos().distance_to(p2.get_pos())
	
	percentage = (distance-DISTANCE_MIN)/(DISTANCE_MAX-DISTANCE_MIN)
	scale = SCALE_MAX-(SCALE_MAX-SCALE_MIN)*percentage
	p1.set_scale(Vector2(scale, scale))
	p2.set_scale(Vector2(scale, scale))
	

	
func checkDistance():
	if p1.get_pos().distance_to(p2.get_pos()) > DISTANCE_MAX:
		return false;
	
	return true;