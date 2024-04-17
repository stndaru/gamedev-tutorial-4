extends Button


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
export(String) var scene_to_load
var level1_scene 
var level2_scene 

# Called when the node enters the scene tree for the first time.
func _ready():
	level1_scene = preload("res://scenes/level/Level1.tscn")
	level2_scene = preload("res://scenes/level/Level2.tscn")



# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_PlayStage1_pressed():
	global.set_lives(3)
	get_tree().change_scene(str("res://scenes/level/" + scene_to_load + ".tscn"))
	
