extends Area2D

@onready var ray = $RayCast2D
@export var speed = 1000



var ilang = false

func _physics_process(delta: float) -> void:
	position.x += speed * delta
	
	if ilang:
		queue_free()
	
	if ray.is_colliding():
		var collider = ray.get_collider()
		if collider:
			print(collider.name)
		if collider and collider.nameNode == "musuh":
			collider.queue_free()
			queue_free()
			
	
	
	


func _on_timer_timeout() -> void:
	ilang = true
	pass # Replace with function body.
