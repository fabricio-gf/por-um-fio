extends Area2D
# class member variables go here, for example:
# var a = 2
# var b = "textvar"

var pressed = 0

func _ready():
	set_process(true)
	pass

func _process(delta):
	if pressed > 0:
		set_scale(Vector2(1,0.5))
	else:
		set_scale(Vector2(1,1))
		
	pass

func _on_BotaoTrigger_area_enter( area ):
	pressed+=1
	pass # replace with function body


func _on_BotaoTrigger_area_exit( area ):
	pressed-=1
	pass # replace with function body
