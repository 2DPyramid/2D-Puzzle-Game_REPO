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
	},
	{
		"question": "Penguins are found in the",
		"options": ["Arctic", "Antarctic"],
		"correct": 1
	},
	{
		"question": "Which of these is an existing 
		Tectonic Plate?",
		"options": ["Eurasian Plate", "Peruvian Plate"],
		"correct": 0
	},
	{
		"question": "The Equator line passes through 
		which of these countries?",
		"options": ["Indonesia", "Russia"],
		"correct": 0
	},
	{
		"question": "How many time zone does the US have?",
		"options": ["11", "19"],
		"correct": 0
	}, #Mahira-Started adding questions
	{
		"question": "What season does Australia 
		experience in December?",
		"options": ["Winter","Summer"],
		"correct": 1
	},
	{
		"question": "How many countries are there in the world today?",
		"options": ["195","203"],
		"correct": 0
	},
	{
		"question": "“Laser” is an acronym",
		"options": ["True","False"],
		"correct": 0
	},
	{
		"question": "Which language family does English belong to?",
		"options": ["Romance Languages", "Germanic Languages"],
		"correct": 1
	},
	{
		"question": "Which country is home to the most 
		timezones in the world?",
		"options": ["France", "Russia"],
		"correct": 0
	},
	{
		"question": "What do you call a polygon with 100 sides?",
		"options": ["Hectogon", "Centigon"],
		"correct": 0
	},
	{
		"question": "What is the 'Golden Ratio' in numerical 
		representation?",
		"options": ["1.618", "2.718"],
		"correct": 0
	},
	{
		"question": "Who invented Algebra and Algorithms?",
		"options": ["Leonhard Euler", "Muhammad ibn 
		Musa al-Khwarizmi"],
		"correct": 1
	},
	{
		"question": "The word 'Bank' and the word 'Bankruptcy' 
		both come from an Italian word for____",
		"options": ["A locked chest", "A wooden bench"],
		"correct":1
	},
	{
		"question": "You are statistically more 
		likely to be killed by a falling 
		vending machine than by what animal?",
		"options": ["A Shark", "A Bear"],
		"correct": 0
	},
	{
		"question": "Which came first: the Orange (the fruit) 
		or Orange (the color)?",
		"options": ["The fruit", "The color"],
		"correct": 0
	},
	{
		"question": "What is the largest freshwater fish ever found?",
		"options": ["Stingray","Catfish"],
		"correct": 0
	},
	{
		"question": "Certain Siphonophores can be longer 
		than Blue whales?",
		"options": ["True", "False"],
		"correct": 0
	},
	{
		"question": "Colorblindness is more common in:",
		"options": ["Men", "Women"],
		"correct": 0
	},
	{
		"question": "Female platypuses sweat milk from their skin, 
		because they don’t have nipples",
		"options": ["True", "False"],
		"correct": 0
	},
	{
		"question": "Male seahorse is the one that carries the eggs 
		and gives birth",
		"options": ["True", "False"],
		"correct": 0
	},
	{
		"question": "If a one legged Octopus gives 
		one of its legs to its mate, how many legs 
		does the octopus now have?",
		"options": ["7","0"],
		"correct": 1
	},
	{
		"question": "How did Pythagoras (yeah, the triangle guy) die?",
		"options": ["He was murdered in a bean field", "No one actually knows for sure"],
		"correct": 1
	},
	{
		"question": "The Empire State Building has its own zip code",
		"options": ["True", "False"],
		"correct": 0
	},
	{
		"question": "What is the Capital of New York State?",
		"options": ["Albany", "New York City"],
		"correct": 0
	},
	{
		"question": "Washington Square, Madison Square, Bryant Park, 
		and Union Square Parks were all formerly:",
		"options": ["Early Settlements", "Graveyards"],
		"correct": 1
	},
	{
		"question": "Which body of water flows 
		beneath the Brooklyn Bridge?",
		"options": ["East River", "Delaware River"],
		"correct": 0
	},
	{
		"question": "The Original color of the Statue of Liberty was:",
		"options": ["Green", "Reddish-Brown"],
		"correct": 1
	},
	{
		"question": "New York City was formerly known as:",
		"options": ["New Amsterdam", "New England"],
		"correct": 0
	},
	{
		"question": "Which of these walking tours actually 
		take place in New York?",
		"options": ["Rat Tour", "Snake Tour"],
		"correct": 0
	},
	{
		"question": "If a company’s profits are 'Decimated,' 
		what percentage of your unit would be killed 
		if you were 'Decimated'?",
		"options": ["10%", "90%"],
		"correct": 0
	},
	{
		"question": "What did an idiōtēs (idiot) 
		originally refer to in Greek?",
		"options": ["A private citizen", "A person who couldn't count"],
		"correct": 0
	},
	{
		"question": "The word 'Muscle' comes from the Latin musculus. 
		If you translate it literally, _______ is 
		is under your skin",
		"options": ["A little mouse", "A little snale"],
		"correct": 0
	},
	{
		"question": "How did Bill Cipher (yeah, the triangle guy 
		from the hit 2012 TV show Gravity Falls) die?",
		"options": ["He didn't die, He's in Therapy", "Gun"],
		"correct": 0
	},
	{
		"question": "Which light has the highest frequency and 
		lowest wavelength?",
		"options": ["Violet Light", "Red Light"],
		"correct": 0
	},
	{
		"question": "Which of these are considered a 'Fish' 
		by modern zoologists?",
		"options": [ "Shellfish", "Seahorse" ],
		"correct": 1
	},
	{
		"question": "The word Gymnasium comes from 
		the Ancient Greek word gymnós. What does 
		that root mean?",
		"options": [ "To sweat", "To be naked" ],
		"correct": 1
	},
	{
		"question": "Sharks are exclusively found 
		in marine/saltwater environments",
		"options": [ "True", "False" ],
		"correct": 1
	},
	{
		"question": "Clown Fish...",
		"options": [ "are solitary creatures", "have a caste system 
		and can change sex" ],
		"correct": 1
	},
	{
		"question": "Lungfish",
		"options": [ "Have lungs", "Do not actually have lungs" ],
		"correct": 0
	},
	{
		"question": "Pigs sweat",
		"options": [ "True, they sweat.", "False, they don't have 
		functional sweat glands." ],
		"correct": 1
	},
	{
		"question": "Solve for x: 3a + 2a = 25",
		"options": [ "5", "Need more information" ],
		"correct": 1
	},
	{
		"question": "Solve for a: 3a + 2a = 25",
		"options": [ "5", "Need more information" ],
		"correct": 0
	}
	#keep adding more here
]
