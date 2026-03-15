extends Control

@onready var ans_1: Button = $MarginContainer/VBoxContainer/answer/Button
@onready var ans_2: Button = $MarginContainer/VBoxContainer/answer/Button2
@onready var question: Label = $MarginContainer/VBoxContainer/HBoxContainer/Label
#get the button texts and question text from the scene

var current = 0 #start at first question

func _ready():
	update_ui()



func update_ui():
	# .size() tells us max number of questions
	if current < Global.data.size(): #if it is not the last question
		var data = Global.data[current] 
		
		#updating the texts
		question.text = data["question"]
		ans_1.text = data["options"][0]
		ans_2.text = data["options"][1]
	else:
		#out of questions
		question.text = "Out of Questions"
		ans_1.hide()
		ans_2.hide()
		



func _on_button_pressed(index: int) -> void:
	var correct = Global.data[current]["correct"]
	if index == correct:
		print("Question " + str(current+1) + ": " + "Correct!")
	else:
		print("Question " + str(current+1) + ": " + "Wrong!")
		
	current += 1	
	update_ui()
	
