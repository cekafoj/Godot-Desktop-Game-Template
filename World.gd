extends Node3D

@onready var cube: MeshInstance3D = $Cube

func _process(delta: float) -> void:
	cube.rotate_y(delta * 1.2)
	cube.rotate_x(delta * 0.6)
