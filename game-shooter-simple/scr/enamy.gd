extends CharacterBody2D

var nameNode = "musuh"
@export var speed = 50

func _physics_process(delta: float) -> void:
	velocity.x = -1 * speed
	pass
	move_and_slide()
