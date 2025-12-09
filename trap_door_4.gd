extends Area2D

var entered = false

# Called when a body enters the Area2D
func _on_body_entered(_body: Node2D) -> void:
	entered = true

# Called when a body exits the Area2D
func _on_body_exited(_body: Node2D) -> void:
	entered = false

func _process(_delta: float) -> void:
	if entered and Input.is_action_just_pressed("interact"):
		get_tree().change_scene_to_file("res://scene/map_7.tscn") # ← change this path if needed
