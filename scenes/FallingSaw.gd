extends RigidBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
export var sceneName: String = "LoseScreen"


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_FallingSaw_body_entered(body):
	if body.get_name() == "Player":
		get_tree().change_scene(str("res://scenes/" + sceneName + ".tscn"))
