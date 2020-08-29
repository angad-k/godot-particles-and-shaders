extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var speed = 200

# Called when the node enters the scene tree for the first time.
func _ready():
	$animation.play("breathe")
	pass # Replace with function body.

func _process(delta):
	var vel = Vector2(0, 0)
	if(Input.is_action_pressed("ui_right")):
		$animation.play("run")
		vel.x = 1
	elif(Input.is_action_pressed("ui_left")):
		$animation.play("run (copy)")
		vel.x = -1
	else:
		$animation.play("breathe")
	$animation/Node2D.position += vel*speed*delta

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
