extends Control

@onready var ans_1: Button = $MarginContainer/VBoxContainer/answer/Button
@onready var ans_2: Button = $MarginContainer/VBoxContainer/answer/Button2
@onready var question: Label = $MarginContainer/VBoxContainer/question/Label
@onready var score: Label = $MarginContainer/VBoxContainer/score/number
@onready var reaction: AnimatedSprite2D = $MarginContainer/VBoxContainer/question/reaction
@onready var score_label: Label = $MarginContainer/VBoxContainer/score/score_label

#get the button texts and question text from the scene

var current = 0 #start at first question
var correctAns = 0.0

func _ready():
	print(str(Global.data.size()) + " Questions Total")
	update_ui()



func update_ui():
	# .size() tells us max number of questions
	if current < 30: #30 questions max
	#if current < Global.data.size(): #if it is not the last question
		var data = Global.data[current] 
		
		#updating the texts
		question.text = data["question"]
		ans_1.text = data["options"][0]
		ans_2.text = data["options"][1]
	else:
		#out of questions
		question.text = "Out of Question"
		score_label.text = "Percent Correct: "
		score.text = str( int((correctAns / 30) *100) )  + "%"
		print("Percent Correct out of total: " + str( int((correctAns / Global.data.size()) *100) )  + "%")
		ans_1.hide()
		ans_2.hide()



func _on_button_pressed(index: int) -> void:
	
	#if correctAns < 2:
		#reaction.play("0")
	#elif correctAns > 2 and correctAns < 5:
		#reaction.play("1")
	#elif correctAns == 5:
		#reaction.play("2")
	#elif correctAns > 5 and correctAns < 7:
		#reaction.play("3")
	#elif correctAns >= 7:
		#reaction.play("4")
		 
	var animation_list = reaction.sprite_frames.get_animation_names()
	var random_index = randi() % animation_list.size()
	var random_anim = animation_list[random_index]
	reaction.play(random_anim)
	##display random reaction sprite
	
	
	var correct = Global.data[current]["correct"]
	if index == correct:
		print("Question " + str(current+1) + ": " + "Correct!")
		
		correctAns+=1
		score.text = str(int(correctAns))
		#update score
	else:
		print("Question " + str(current+1) + ": " + "Wrong!")
	
	current += 1	
	update_ui()
