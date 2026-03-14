extends Control

@onready var ans_1: Button = $MarginContainer/VBoxContainer/answer/Button
@onready var ans_2: Button = $MarginContainer/VBoxContainer/answer/Button2
@onready var question: Label = $MarginContainer/VBoxContainer/HBoxContainer/Label
#get the button texts and question text from the scene

var current = 0

func _ready():
	update_ui()



func update_ui():
	# .size() tells us max number of questions
	if current < Global.data.size():
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




func _on_button_pressed(choice: int):
	# Get the dictionary inside the current array slot
	var current_question = Global.questions[current]
	
	if choice == current_question["correct"]:
		#the global.gd has the correct index
		print("Correct!")
		#I think we could add scores system here
	else:
		print("Wrong.")

	# Move to the next slot in the array
	current += 1
	update_ui()
