extends Node2D

@export var enemyScn : PackedScene

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func spawn():
	var spawn = enemyScn.instantiate()
	var randY = randf_range(50, 540)
	spawn.global_position = Vector2(810, randY)
	get_tree().current_scene.add_child(spawn)


func _on_timer_timeout() -> void:
	spawn()
	pass # Replace with function body.
