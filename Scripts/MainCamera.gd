extends Camera2D

onready var p1 = get_node("../Player 1")
onready var p2 = get_node("../Player 2")

func _ready():
	set_process(true)
	pass
	
func _process(delta):
	set_pos((p1.get_pos()+p2.get_pos())/2)
