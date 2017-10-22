extends AnimatedSprite

func _on_finished():
	if get_animation() == "comecaCorrer":
		set_animation("corre")
