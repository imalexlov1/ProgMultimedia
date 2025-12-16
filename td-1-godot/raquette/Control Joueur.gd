extends Node2D

@export var speed : int = 400 

func _ready() -> void:
	pass 

func _physics_process(delta: float) -> void:
	var velocity = Vector2.ZERO # Start with no movement

	if Input.is_action_pressed("p1_right"):
		velocity.x += 1
	if Input.is_action_pressed("p1_left"):
		velocity.x -= 1

	if velocity.length() > 0:
		velocity = velocity.normalized() * speed
		
		position += velocity * delta
