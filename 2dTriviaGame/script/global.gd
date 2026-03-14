extends Node

func _ready():
	data.shuffle()
	#randomize questions

var data = [
	{
		"question": "What is the capital of France?",
		"options": ["London","Paris"],
		"correct": 1
	},
	{
		"question": "Which planet is known as the Red Planet?",
		"options": ["Mars", "Venus"],
		"correct": 0
	},
	{
		"question": "Which of these countries experiences 
		Midnight Sun for 6 months?",
		"options": ["Norway", "Netherland"],
		"correct": 0
	},
	{
		"question": "Australia is a Continent and a:",
		"options": ["Capital", "Country"],
		"correct": 1
	},
	{
		"question": "Mauritius is a part of",
		"options": ["America", "Africa"],
		"correct": 1
	}
	#keep adding more here
]
