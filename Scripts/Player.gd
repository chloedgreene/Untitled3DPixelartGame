extends KinematicBody

export var gravity = Vector3.DOWN * 10
export var speed = 4
export var rot_speed = 0.85

var velocity = Vector3.ZERO
onready var pivot = get_node("Pivot")

func _physics_process(delta):

	get_input(delta)
	velocity = move_and_slide(velocity, Vector3.UP)


func get_input(delta):
	var vy = velocity.y
	velocity = Vector3.ZERO
	if Input.is_action_pressed("forward"):
		velocity += -transform.basis.z * speed
	if Input.is_action_pressed("backwords"):
		velocity += transform.basis.z * speed
	if Input.is_action_pressed("d"):
		rotate_y(-rot_speed * delta)
		
	if Input.is_action_pressed("a"):
		rotate_y(rot_speed * delta)
		
	velocity.y = vy
