extends Control


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	Global.data.shuffle()


# Called every frame. 'delta' is the elapsed time since the previous frame.
@warning_ignore("unused_parameter")
func _process(delta: float) -> void:
	pass


func _on_button_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/home.tscn")

#get_tree().change_scene_to_file("res://levels/level_1.tscn")
