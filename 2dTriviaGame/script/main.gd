extends Control

@onready var ans_1: Button = $MarginContainer/VBoxContainer/answer/Button
@onready var ans_2: Button = $MarginContainer/VBoxContainer/answer/Button2
@onready var question: Label = $MarginContainer/VBoxContainer/question/Label
@onready var score: Label = $MarginContainer/VBoxContainer/score/number
@onready var reaction: AnimatedSprite2D = $MarginContainer/VBoxContainer/question/reaction
@onready var score_label: Label = $MarginContainer/VBoxContainer/score/score_label
@onready var color_rect: ColorRect = $ColorRect
@onready var wrong_reaction: AnimatedSprite2D = $MarginContainer/VBoxContainer/question/wrong_reaction

#get the button texts and question text from the scene

var current = 0 #start at first question
var correctAns = 0.0

func _ready():
	print(str(Global.data.size()) + " Questions Total")
	update_ui()



func update_ui():
	# .size() tells us max number of questions
	#if current < 30: #30 questions max
	if current < Global.data.size(): #for if you want to go through EVERY questions
		var data = Global.data[current] 
		
		#updating the texts
		question.text = data["question"]
		ans_1.text = data["options"][0]
		ans_2.text = data["options"][1]
	else:
		#out of questions
		question.text = "Out of Question"
		score_label.text = "Percent Correct: "
		score.text = str( int((correctAns / current) *100) )  + "%"
		print("Percent Correct out of total: " + str( int((correctAns / Global.data.size()) *100) )  + "%")
		ans_1.hide()
		ans_2.hide()



func _on_button_pressed(index: int) -> void:
	
	if correctAns < 7:
		reaction.play("1")
	elif correctAns == 7:
		reaction.play("2")
	elif correctAns > 7 and correctAns < 12:
		reaction.play("3")
	elif correctAns >= 12:
		reaction.play("4")
		 
	#var animation_list = reaction.sprite_frames.get_animation_names()
	#var random_index = randi() % animation_list.size()
	#var random_anim = animation_list[random_index]
	#reaction.play(random_anim)
	#display random reaction sprite
	
	
	var correct = Global.data[current]["correct"]
	if index == correct:
		print("Question " + str(current+1) + ": " + "Correct!")
		
		correctAns+=1
		score.text = str(int(correctAns))
		#update score
		color_rect.color = Color.LIGHT_GREEN
		await get_tree().create_timer(0.2).timeout
		color_rect.color = Color.WHITE
	else:
		print("Question " + str(current+1) + ": " + "Wrong!")
		
		#disgusted reaction when you get wrong answer
		color_rect.color = Color.ORANGE_RED
		wrong_reaction.show()
		await get_tree().create_timer(0.25).timeout
		color_rect.color = Color.WHITE
		wrong_reaction.hide()
	
	current += 1	
	update_ui()
