extends Control

@onready var ans_1: Button = $MarginContainer/VBoxContainer/answer/Button
@onready var ans_2: Button = $MarginContainer/VBoxContainer/answer/Button2
@onready var question: Label = $MarginContainer/VBoxContainer/question/Label
@onready var score: Label = $MarginContainer/VBoxContainer/score/number
@onready var reaction: AnimatedSprite2D = $MarginContainer/VBoxContainer/question/reaction
@onready var score_label: Label = $MarginContainer/VBoxContainer/score/score_label
@onready var color_rect: ColorRect = $ColorRect
@onready var wrong_reaction: AnimatedSprite2D = $MarginContainer/VBoxContainer/question/wrong_reaction
@onready var timer_label: Label = $MarginContainer/VBoxContainer/timer/timer_label
@export var timer: Timer
@onready var critter: AnimatedSprite2D = $MarginContainer/VBoxContainer/question/critter

#get the button texts and question text from the scene

var current = 0 #start at first question
var correctAns = 0.0
var reaction_var = 10

func _ready():
	print(str(Global.data.size()) + " Questions Total")
	update_ui()
	time_left_to_live()



func update_ui():
	# .size() tells us max number of questions
	#if current < 30: #30 questions max
	if current < Global.data.size(): #for if you want to go through EVERY questions
		var data = Global.data[current] 
		
		if data.has("special"):
			print("special")
		
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
	
	if reaction_var == 10:
		reaction.play("2")
	elif reaction_var < 5:
		reaction.play("0")
	elif reaction_var >= 5 and reaction_var < 9:
		reaction.play("1")
	elif reaction_var > 10 and reaction_var < 15:
		reaction.play("3")
	elif reaction_var >= 15:
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
		reaction_var +=1
		score.text = str(int(correctAns))
		#update score
		color_rect.color = Color.LIGHT_GREEN
		await get_tree().create_timer(0.2).timeout
		color_rect.color = Color.WHITE
		
		if Global.data[current].has("special"):
			critter.show()
		
	else:
		print("Question " + str(current+1) + ": " + "Wrong!")
		reaction_var -=1
		
		#disgusted reaction when you get wrong answer
		color_rect.color = Color.ORANGE_RED
		wrong_reaction.show()
		reaction.hide()
		await get_tree().create_timer(0.3).timeout
		color_rect.color = Color.WHITE
		wrong_reaction.hide()
		reaction.show()
		
	
	
	
	print("Reaction: " + str(reaction_var))
	current += 1	
	update_ui()


func time_left_to_live():
	var time_left = timer.time_left
	var minute = floor(time_left / 60)
	var second = int(time_left) % 60
	return [minute, second]
	
func _process(_delta):
	timer_label.text = "%02d:%02d" % time_left_to_live()
	
func _on_timer_timeout() -> void:
	question.text = "Out of Time"
	score_label.text = "Percent Correct: "
	score.text = str( int((correctAns / current) *100) )  + "%"
	print("Percent Correct out of total: " + str( int((correctAns / Global.data.size()) *100) )  + "%")
	ans_1.hide()
	ans_2.hide()
