extends Node2D

@export var speed : int = 400 
var screen_size : Vector2 # Pour stocker la taille de l'écran

func _ready() -> void:
	# On récupère la taille de la fenêtre au démarrage du jeu
	screen_size = get_viewport_rect().size

func _physics_process(delta: float) -> void:
	var velocity = Vector2.ZERO 

	if Input.is_action_pressed("p1_right"):
		velocity.x += 1
	if Input.is_action_pressed("p1_left"):
		velocity.x -= 1

	if velocity.length() > 0:
		velocity = velocity.normalized() * speed
		position += velocity * delta
		position.x = clamp(position.x, 0, screen_size.x)
