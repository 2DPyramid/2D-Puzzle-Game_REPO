extends Control
@onready var dialogue_opt_1: Button = $MarginContainer/VBoxContainer/HBoxContainer2/dialogue_opt1
@onready var dialogue_opt_2: Button = $MarginContainer/VBoxContainer/HBoxContainer2/dialogue_opt2
@export var dialogue_text: Label
@onready var input: LineEdit = $MarginContainer/VBoxContainer/LineEdit
@onready var reaction: AnimatedSprite2D = $MarginContainer/VBoxContainer/HBoxContainer/reaction

var current_step: int = 0
var dialogue_data = [
	{
		"character": "Oh Hello there!",
		"opt_1": "Oh hello!",
		"opt_2": "Uhm... Who are you"
	},
	{
		"character": "Oh, My name is <undecided>! What is your name?",
		"opt_1": "This is my name!",
		"opt_2": "Why am I here."
	},
	{
		"character": "! So anyways, I heard you were the king of trivia!",
		"opt_1": "I am?",
		"opt_2": "Oh yes, Trivia is 
		totally my game!"
	},
	{
		"character": "So am I! Want to battle with me?",
		"opt_1": "Sure, That sounds 
		fun!",
		"opt_2": "No one can beat 
		me in Trivia!"
	},
	{
		"character": "Are you sure about that? 
		Hope you’ve got a good therapist on a 
		speed dial later today!",
		"opt_1": "Let's GO!",
		"opt_2": "I am totally going to 
		crush you in trivia!"
	}
]

func _ready():
	update_ui()
	
func update_ui():
	var current_data = dialogue_data[current_step]
	dialogue_opt_1.text = current_data["opt_1"]
	dialogue_opt_2.text = current_data["opt_2"]
	dialogue_text.text = current_data["character"]
	
	print(current_step)
	if current_step > 1:
		if input.text == "":
			dialogue_text.text = dialogue_text.text + " BTW, Would you PLEASE tell me your name before continuing!!"
	
	if current_step == 2:
		if input.text == "":
			dialogue_text.text = "Oh! Nice to meet you... " + current_data["character"] + " BTW, Would you PLEASE tell me your name before continuing!!"
		else:
			dialogue_text.text = "Oh, Hello, " + input.text + ". That is a pretty cool name. " + current_data["character"]
	if current_step == 4:
		reaction.play("0")

func change_scene():
	get_tree().change_scene_to_file("res://scenes/main.tscn")

func _on_dialogue_pressed() -> void:
	current_step += 1
	if current_step < dialogue_data.size():
		update_ui()
	else:
		change_scene()
