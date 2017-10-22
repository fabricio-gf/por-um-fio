extends Node2D

onready var checkpoints = get_children()
var checkpoint_atual = null

func _ready():
	set_process_input(true)
	for c in checkpoints:
		c.connect("area_enter", self, "_on_area_enter", [c])
		c.desliga()

func _on_area_enter(area, checkpoint):
	if checkpoint_atual != null:
		checkpoint_atual.desliga()
	checkpoint_atual = checkpoint
	checkpoint.liga()

func posicao_respawn():
	if checkpoint_atual != null:
		return checkpoint_atual.get_global_pos()
	else:
		return get_pos()

func _input(event):
	if event.is_action_pressed("ui_select"):
		get_node("../Player 1").marca_reset(posicao_respawn())
		get_node("../Player 2").marca_reset(posicao_respawn())
