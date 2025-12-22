extends RigidBody2D

@export var speed := 100.0
var velocity: Vector2

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	velocity = Vector2(1, -1).normalized() * speed


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	var collision = move_and_collide(velocity * delta)
	if collision:
		velocity = velocity.bounce(collision.get_normal())
		
		var collider = collision.get_collider()
		if collider and collider.is_in_group("brick"):
			collider.queue_free()  # détruit la brique
