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
		"question": "Which of these countries experiences Midnight Sun for 6 months?",
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
		"question": "Which of these is an existing Tectonic Plate?",
		"options": ["Eurasian Plate", "Peruvian Plate"],
		"correct": 0
	},
	{
		"question": "The Equator line passes through which of these countries?",
		"options": ["Indonesia", "Russia"],
		"correct": 0
	},
	{
		"question": "How many time zone does the US have?",
		"options": ["11", "19"],
		"correct": 0
	}, #Mahira-Started adding questions
	{
		"question": "What season does Australia experience in December?",
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
		"question": "Which country is home to the most timezones in the world?",
		"options": ["France", "Russia"],
		"correct": 0
	},
	{
		"question": "What do you call a polygon with 100 sides?",
		"options": ["Hectogon", "Centigon"],
		"correct": 0
	},
	{
		"question": "What is the 'Golden Ratio' in numerical representation?",
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
		"question": "The word 'Bank' and the word 'Bankruptcy' both come from an Italian word for____",
		"options": ["A locked chest", "A wooden bench"],
		"correct":1
	},
	{
		"question": "You are statistically more likely to be killed by a falling vending machine than by what animal?",
		"options": ["A Shark", "A Bear"],
		"correct": 0
	},
	{
		"question": "Which came first: the Orange (the fruit) or Orange (the color)?",
		"options": ["The fruit", "The color"],
		"correct": 0
	},
	{
		"question": "What is the largest freshwater fish ever found?",
		"options": ["Stingray","Catfish"],
		"correct": 0
	},
	{
		"question": "Certain Siphonophores can be longer than Blue whales?",
		"options": ["True", "False"],
		"correct": 0
	},
	{
		"question": "Colorblindness is more common in:",
		"options": ["Men", "Women"],
		"correct": 0
	},
	{
		"question": "Female platypuses sweat milk from their skin, because they don’t have nipples",
		"options": ["True", "False"],
		"correct": 0
	},
	{
		"question": "Male seahorse is the one that carries the eggs and gives birth",
		"options": ["True", "False"],
		"correct": 0
	},
	{
		"question": "If a one legged Octopus gives one of its legs to its mate, how many legs does the octopus now have?",
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
		"question": "Washington Square, Madison Square, Bryant Park, and Union Square Parks were all formerly:",
		"options": ["Early Settlements", "Graveyards"],
		"correct": 1
	},
	{
		"question": "Which body of water flows beneath the Brooklyn Bridge?",
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
		"question": "Which of these walking tours actually take place in New York?",
		"options": ["Rat Tour", "Snake Tour"],
		"correct": 0
	},
	{
		"question": "If a company’s profits are 'Decimated,' what percentage of your unit would be killed if you were 'Decimated'?",
		"options": ["10%", "90%"],
		"correct": 0
	},
	{
		"question": "What did an idiōtēs (idiot) originally refer to in Greek?",
		"options": ["A private citizen", "A person who couldn't count"],
		"correct": 0
	},
	{
		"question": "The word 'Muscle' comes from the Latin musculus. If you translate it literally, _______ is under your skin",
		"options": ["A little mouse", "A little snale"],
		"correct": 0
	},
	{
		"question": "How did Bill Cipher (yeah, the triangle guy from the hit 2012 TV show Gravity Falls) die?",
		"options": ["He didn't die, He's in Therapy", "Gun"],
		"correct": 0
	},
	{
		"question": "Which light has the highest frequency and lowest wavelength?",
		"options": ["Violet Light", "Red Light"],
		"correct": 0
	},
	{
		"question": "Which of these are considered a 'Fish' by modern zoologists?",
		"options": [ "Shellfish", "Seahorse" ],
		"correct": 1
	},
	{
		"question": "The word Gymnasium comes from the Ancient Greek word gymnós. What does that root mean?",
		"options": [ "To sweat", "To be naked" ],
		"correct": 1
	},
	{
		"question": "Sharks are exclusively found in marine/saltwater environments",
		"options": [ "True", "False" ],
		"correct": 1
	},
	{
		"question": "Clown Fish...",
		"options": [ "are solitary creatures who
		 only interact with other 
		clownfish when they mate", "have a caste system and 
		change sex whenever a higher 
		caste clownfish dies"],
		"correct": 1
	},
	{
		"question": "Lungfish",
		"options": [ "Have lungs", "Do not actually have lungs,
		and are called that 
		because they can survive
		out of water longer 
		than other fish" ],
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
	},
	
	{
		"question": "If you travel upwards at 60 mph (96 km/h), how long will it take you to reach space (as recognized by the Kármán line)?",
		"options": ["About a week", "About an hour"],
		"correct": 1
	},
	{ 	
		"question": "Which have existed longer on Earth?",
		"options": ["sharks", "trees"],
		"correct": 0
	},
	{ 	
		"question": "What is a Fish?",
		"options": ["A paraphyletic term, a group 
		of animals who look 
		and behave similarly.", 
		"A phylogenetic classification 
		including all the descendents 
		of a common ancestor."],
		"correct": 0
	},
	{ 	
		"question": "Spaghetti and meatballs as a dish
		 was created in",
		"options": ["Little Italy", "Southern Italy"],
		"correct": 0
	},
	{ 	
		"question": "how many boroughs are there in New York City?",
		"options": ["5", "6"],
		"correct": 0
	},
	{	
		"question": "which was the first state formed in the USA?",
		"options": ["Delaware", "Washington"],
		"correct": 0
	},
	{	
		"question": "What is the East River in NYC?",
		"options": ["a river", "a tidal strait"],
		"correct": 1
	},
	{ 	
		"question": "Arapaima can survive in waters with lower oxygen levels than most fish can tolerate because...",
		"options": ["Arapaima have specialized
		 glands that regulate oxygen usage.", "Arapaima can use their
		 swim bladder like a lung 
		and will surface for air"],
		"correct": 1
	},
	{	
		"question": "Tollund Man is",
		"options": ["a bog mummy", "the mascot of a Danish
		 candy company"],
		"correct": 0
	},
	{	
		"question": "Brine pools, often described as looking like underwater lakes...",
		"options": ["were invented by Jules Verne
		in his novel Twenty Thousand
		Leagues Under the Sea and do
		not really exist", "are toxic environments for many 
		organisms."],
		"correct": 1
	},
	{ 	
		"question": "Platypuses give birth to live young",
		"options": ["True, like other mammals, 
		they give birth to live young", "False, as monotremes,
		they are one of few 
		egg-laying mammals"],
		"correct": 1
	},
	{	
		"question": "Solve for x: 3a + 2a = 25",
		"options": ["a = 5", "need more information"],
		"correct": 1
	},
	{	
		"question": "how much do you love me?",
		"options": ["A whoooooooole lot! :)", "Not at all."],
		"correct": 0
	},
	#, {	
		#"question": "Will my (the slightly unnerving disembodied
		 #face drawn in MS Paint) dad (Mr. the slightly unnerving 
		#disembodied face drawn in MS Paint) ever return with the milk?",
		#"options": ["it's me, my child, 
		#I have finally returned 
		#(you are larping as my dad)", "You do not have a dad,
		 #you are a slightly unnerving 
		#disembodied face drawn in MS Paint and 
		#those don't have dads 
		#(this is technically true but please
		 #pick the other option
		 #PLEASE I WILL GIVE YOU A POINT!
		 #WE CAN PLAY CATCH!!!!)"],
		#"correct": 0
	#},
	#{	
		#"question": "What did I 
		#(the slightly unnerving disembodied face
		 #drawn in MS Paint) have for breakfast?",
		#"options": ["JPGs of waffles", "Real waffles like
		 #a real normal person"],
		#"correct": 0
	#},
	#{	
		#"question": "Will you..ouhh ummm...
		#will you go to the school dance with me 
		#(the slightly unnerving disembodied face drawn in MS Paint)?",
		#"options": ["Yes! Of course!!
		 #This is a dream come true!!", "What did you just say??"],
		#"correct": 0
	#}
	{	"question": "I found a a a WEIRD FREAKING THING(!!!!!!) outside! ...Should I keep it? (?????)",
		"options": ["yes", "no"],
		"correct": 0,
		"special": true
	}
	
	
	#keep adding more here
]
