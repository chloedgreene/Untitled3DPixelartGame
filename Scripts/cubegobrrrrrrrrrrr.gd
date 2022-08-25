extends MeshInstance


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.#
func _process(delta):
	rotate_x(1*delta)
	rotate_y(2*delta)
	rotate_z(1*delta)
	pass
