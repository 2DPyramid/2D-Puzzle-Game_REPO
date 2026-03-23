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
@onready var char_comments: Label = $char_comments
@onready var reaction_2: AnimatedSprite2D = $reaction_2

@onready var audio_stream_player: AudioStreamPlayer = $AudioStreamPlayer

#get the button texts and question text from the scene

var current = 0 #start at first question
var correctAns = 0.0
var reaction_var = 10

func _ready():
	print(str(Global.data.size()) + " Questions Total")
	update_ui()
	time_left_to_live()
	audio_stream_player.play()
	$"Results Reaction".hide()

func _on_audio_stream_player_finished() -> void:
	audio_stream_player.play()
	
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
		print("Score: " + str(correctAns))
		ans_1.hide()
		ans_2.hide()
		char_comments.hide()



func _on_button_pressed(index: int) -> void:
	
	if reaction_var == 10:
		reaction.play("2")
		reaction_2.play("2")
	elif reaction_var < 5:
		reaction.play("0")
		reaction_2.play("0")
	elif reaction_var >= 5 and reaction_var < 9:
		reaction.play("1")
		reaction_2.play("1")
	elif reaction_var > 10 and reaction_var < 15:
		reaction.play("3")
		reaction_2.play("3")
	elif reaction_var >= 15:
		reaction.play("4")
		reaction_2.play("4")
		 
	var comment_list = ["Just tell me your excuse now so we can save time later.", 
	"Don’t worry, losing builds character. You’re about to have a lot of character.",
	"If you beat me, I’ll frame the scoreboard. It’ll be a historical event.",
	"This is cute. You actually think you have a chance.",
	"Warm-up’s over. Oh wait... you were actually trying?",
	"I’ll play with one brain cell to make this fair.",
	"Lose gracefully. I need a good winner photo for my wall.",
	"Just tell me your excuse now so we can save time later.",
	"Should I slow down, or is this your top speed?",
	"I hope you’re better at this than you are at replying to texts.",
	"Stretch first, I don’t want you pulling something while chasing my score.",
	"Did you pre-order the L you’re about to take, or should I gift it to you?",
	"Stretch first, I don’t want you pulling something while chasing my score.",
	"I’ll try not to win too fast. I don’t want you to feel scammed.",
	"Careful trash-talking me, you’re already giving post-game interview energy.”",
	"Are you playing or just here for the participation trophy experience?",
	"I’m warming up. You’re already at your limit. This feels illegal.",
	"Don’t be nervous, losing to me is basically a rite of passage.",
	"If I lose, I’ll frame it. If you lose, it’s just your personality.",
	"Hope your excuses are better than your trivia knowledge, because you’re gonna need them."]
	var random_index = randi() % comment_list.size()
	var random_comm = comment_list[random_index]
	char_comments.text = random_comm
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
	print("Score: " + str(correctAns))
	ans_1.hide()
	ans_2.hide()
	$"Results Reaction".show()
	if correctAns / current * 100 > 70:
			$end.play("YIPPEE")
	else:
			$end.play("LMAO")
		
			
