extends LinkButton


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
export(String) var scene_to_load

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_NewGame_pressed():
	global.set_lives(3)
	get_tree().change_scene(str("res://scenes/level/" + scene_to_load + ".tscn"))
