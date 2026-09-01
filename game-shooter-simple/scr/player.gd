extends CharacterBody2D

@export var bulletScn :PackedScene
# Kecepatan gerak karakter (bisa diubah langsung di Inspector)
@export var speed: float = 200.0
var canShoot = true

func _physics_process(delta: float) -> void:
	# Mengambil input arah dari keyboard (WASD / Arrow Keys)
	var direction := Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
	if Input.is_action_just_pressed("ui_accept") and canShoot:
		shoot()
	# Menghitung kecepatan berdasarkan arah dan speed
	velocity = direction * speed
	
	# Menggerakkan karakter (Godot 4 otomatis menggunakan velocity)
	move_and_slide()

func shoot():
	var bullet = bulletScn.instantiate()
	bullet.global_position = global_position
	get_tree().current_scene.add_child(bullet)
	canShoot = false


func _on_timer_timeout() -> void:
	if !canShoot:
		canShoot = true
	pass # Replace with function body.
