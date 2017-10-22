extends Area2D

export var corLigado = Color(1, 1, 0)
export var corDesligado = Color(0, 0, 0)

onready var sprite = get_node("Sprite")

func liga():
	sprite.set_modulate(corLigado)

func desliga():
	sprite.set_modulate(corDesligado)
