extends StaticBody2D

onready var player1 = get_node("../Player 1")
onready var player2 = get_node("../Player 2")

onready var player1Sprite = get_node("../Player 1/PlayerSprite")
onready var player2Sprite = get_node("../Player 2/PlayerSprite")

func _ready():
	pass

func _on_Area2D_body_enter( body ):
	print("CHEGUEI NO FINAL")
	
	print(body)
	
	player1.set_mode(1)
	player2.set_mode(1)
	
	player1Sprite.set_animation("danca")
	player2Sprite.set_animation("danca")
	

	
