extends KinematicBody2D

# class member variables go here, for example:
# var a = 2
# var b = "textvar"
export var Destity = Vector2(0,0)
export var Speed = 20.0
var _Origin = Vector2(0,0)
var _will_move = 0

func _ready():
	set_process(true)
	_Origin = get_pos()
	pass

func _process(delta):
	var dir = Vector2(0,0)
	if _will_move > 0:
		dir = Destity - get_pos()
	else :
		dir = _Origin - get_pos()

	if dir.length() > 1:
		move(dir.normalized() * Speed)
	pass


func _on_BotaoTrigger_area_enter( area ):
	_will_move+=1
	pass # replace with function body


func _on_BotaoTrigger_area_exit( area ):
	_will_move-=1
	pass # replace with function body
