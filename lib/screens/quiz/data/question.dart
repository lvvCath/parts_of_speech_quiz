import 'package:parts_of_speech_quiz/screens/quiz/model/questionmodel.dart';

List<QuestionModel> questionAllInOne = [
  QuestionModel(
    "How Many Whiskers does the average cat have on each side of its face ?",
    {
      "1": false,
      "3": false,
      "12": true,
      "5,007": false,
    },
  ),
  QuestionModel("When does a cat purr ?", {
    "When it cares for its kittens": false,
    "When it needs comfort": false,
    "When it feels content": false,
    "All of the above": true,
  }),
  QuestionModel("What is the average number of kittens in a litter ?", {
    "1 to 2": false,
    "3 to 5": true,
    "8 to 10": false,
    "12 to 14": false,
  }),
  QuestionModel("How many moons does Mars have ?", {
    "1": false,
    "2": false,
    "4": true,
    "8": false,
  }),
  QuestionModel("What is Mars's nickname ?", {
    "The red planet": true,
    "The dusty planet": false,
    "The hot planet": false,
    "The smelly planet": false,
  }),
  QuestionModel("About How long would it take to travel to Mars ?", {
    "Three days": false,
    "A month": false,
    "Eight months": true,
    "Two years": false,
  }),
  QuestionModel(
      "Mars is Named after the Roman god Mars. What is he the god of ?", {
    "Fire": false,
    "Love": false,
    "Agriculture": false,
    "War": true,
  }),
  QuestionModel("Mars Is the ___ planet from the sun ?", {
    "Secon": false,
    "Third": false,
    "Fourth": true,
    "Sixth": false,
  }),
  QuestionModel(
      "Where did Orville and Wilbur Wright build their first flying airplane ?",
      {
        "Paris, France": false,
        "Boston, Massachusetts": false,
        "Kitty Hawk, North Carolina": true,
        "Tokyou, Japan": false,
      }),
  QuestionModel(
      "The First astronuts to travel to space came from which country ?", {
    "United States": false,
    "Soviet Union (now Russia)": true,
    "China": false,
    "Rocketonia": false,
  }),
];

List<QuestionModel> questionPractice = [];

List<QuestionModel> questionNounEasy = [
  QuestionModel(
      "Which singular noun requires that you add an -es to the end to make it plural?",
      {
        "keyboard": false,
        "proof": false,
        "fox": true,
        "Sister-in-law": false,
      }),
  QuestionModel("Which of the following plural nouns is spelled incorrectly?", {
    "brothers-in-law": false,
    "donkies": true,
    "knives": false,
    "masses": false,
  }),
  QuestionModel("What is a noun?", {
    "Action words": false,
    "Describing words": false,
    "Person, place, or thing": true,
    "Color Words": false,
  }),
  QuestionModel(
      "Heroes never lay down their words. Which word is a plural noun?", {
    "never": false,
    "heroes": true,
    "lay down": false,
    "words": false,
  }),
  QuestionModel("Which is not a noun?", {
    "Dog": false,
    "School": false,
    "Running": true,
    "Ms. Taylor": false,
  }),
  QuestionModel(
      "Which word is a noun in the sentence? “Can you help me with my homework please?”",
      {
        "please": false,
        "help": false,
        "my": false,
        "homework": true,
      }),
  QuestionModel("Which word below is a proper noun?", {
    "city": false,
    "business": false,
    "Kailua-Kona": true,
    "school": false,
  }),
  QuestionModel("The plural of dish is ___", {
    "dishese": false,
    "dishs": false,
    "dishes": true,
    "dish's": false,
  }),
  QuestionModel("What does SINGULAR mean?", {
    "two": false,
    "one": true,
    "zero": false,
    "more than one": false,
  }),
  QuestionModel("10.How can you tell if a noun is a proper noun?", {
    "It starts with a capital letter.": true,
    "It starts with a lowercase letter.": false,
    "It has an apostrophe.": false,
    "It tells you.": false,
  }),
];

List<QuestionModel> questionNounMedium = [
  QuestionModel(
      "How many nouns are there in this sentence? “My brother gave me a book for my birthday?”",
      {
        "3": true,
        "2": false,
        "4": false,
        "1": false,
      }),
  QuestionModel(
      "How many nouns are there in this sentence? “They are forecasting rain later.”",
      {
        "rain": true,
        "later": false,
        "forecasting": false,
        "they": false,
      }),
  QuestionModel(
      "Which word is used as a common noun? “My cousin and I saw the posters on the bulletin board at the grocery store announcing the arrival of the circus in our town.”",
      {
        "posters": false,
        "announcing": false,
        "saw": false,
        "cousin": true,
      }),
  QuestionModel(
      "The boys will go to school on Wednesday. Which word is a proper noun?", {
    "noun": false,
    "Wednesday": true,
    "boys": false,
    "school": false,
  }),
  QuestionModel(
      "What are the common nouns in this sentence? “The rabbit was always late and Alice followed him into his hole.”",
      {
        "what, him, was": false,
        "rabbit, hole": true,
        "Alice, rabbit, hole": false,
        "late, into, his": false,
      }),
  QuestionModel("Which word is an example of a proper noun?", {
    "city": false,
    "New York": true,
    "state": false,
    "Country": false,
  }),
  QuestionModel(
      "Which noun is supposed to be capitalized because it is a proper noun?", {
    "cheshire cat": false,
    "alice": false,
    "wonderland": false,
    "all of the above": true,
  }),
  QuestionModel(
      "The crowd was on the main street. Which word is a collective noun?", {
    "crowd": true,
    "main": false,
    "on": false,
    "street": false,
  }),
  QuestionModel("Which word is an abstract noun?", {
    "state": false,
    "peace": true,
    "need": false,
    "Our": false,
  }),
  QuestionModel(
      "Beauty does not need any ornaments. Which word is an uncountable noun?",
      {
        "need": false,
        "beauty": true,
        "any ornaments": false,
        "": false,
      }),
];

List<QuestionModel> questionNounHard = [
  QuestionModel(
      "This nouns are used to name a GENERAL type of person, place, or thing.",
      {
        "Compound Nouns": false,
        "Proper Nouns": false,
        "Common Nouns": true,
        "Mass Nouns": false,
      }),
  QuestionModel(
      "This nouns are used to name a SPECIFIC person, place, or thing. This noun begins with a capital letter.",
      {
        "Concrete Noun": false,
        "Compound Noun": false,
        "Proper Noun": true,
        "Abstract Noun": false,
      }),
  QuestionModel(
      "What type of nouns are two or more words that create a noun. This noun are sometime one word or words joined by a hyphen.",
      {
        "Proper Noun": false,
        "Countable Noun": false,
        "Abstract Noun": false,
        "Compound Noun": true,
      }),
  QuestionModel(
      "This is a noun that CAN be counted. They have a singular and plural form and can be used with a number.",
      {
        "Compound Noun": false,
        "Collective Noun": false,
        "Mass Noun": false,
        "Countable Noun": true,
      }),
  QuestionModel("This nouns are nouns that CANNOT be counted.", {
    "Abstract Noun": false,
    "Compound Noun": false,
    "Countable Noun": false,
    "Mass Noun": true,
  }),
  QuestionModel(
      "This nouns are words that refer to a set of group of people, animal, or things.",
      {
        "Collective Noun": true,
        "Compound Noun": false,
        "Abstract Noun": false,
        "Proper Noun": false,
      }),
  QuestionModel(
      "This nouns are nouns which refer to people and things that exist physically and that at least one of the senses can detect.",
      {
        "Mass Noun": false,
        "Common Noun": false,
        "Concrete Noun": true,
        "Abstract Noun": false,
      }),
  QuestionModel(
      "This nouns are nouns that have no physical existence and are not concrete. They refer to ideas, emotions or concepts so you CANNOT see, touch, hear, smell, or taste something.",
      {
        "Proper Noun": false,
        "Countable Noun": false,
        "Common Noun": false,
        "Abstract Noun": true,
      }),
  QuestionModel(
      "Honesty is the best policy. The word ‘honesty’ is what type of nouns?", {
    "Common Noun": false,
    "Proper Noun": false,
    "Abstract Noun": true,
    "Countable Noun": false,
  }),
  QuestionModel(
      "My family lives in that house. The word ‘family’ is what type of nouns?",
      {
        "Count Noun": false,
        "Common Noun": false,
        "Concrete Noun": false,
        "Collective Noun": true,
      }),
];

List<QuestionModel> questionPronounEasy = [
  QuestionModel("", {
    "": false,
    "": true,
    "": false,
    "": false,
  }),
  QuestionModel("", {
    "": false,
    "": true,
    "": false,
    "": false,
  }),
  QuestionModel("", {
    "": false,
    "": true,
    "": false,
    "": false,
  }),
  QuestionModel("", {
    "": false,
    "": true,
    "": false,
    "": false,
  }),
  QuestionModel("", {
    "": false,
    "": true,
    "": false,
    "": false,
  }),
  QuestionModel("", {
    "": false,
    "": true,
    "": false,
    "": false,
  }),
  QuestionModel("", {
    "": false,
    "": true,
    "": false,
    "": false,
  }),
  QuestionModel("", {
    "": false,
    "": true,
    "": false,
    "": false,
  }),
  QuestionModel("", {
    "": false,
    "": true,
    "": false,
    "": false,
  }),
  QuestionModel("", {
    "": false,
    "": true,
    "": false,
    "": false,
  }),
];

List<QuestionModel> questionPronounMedium = [
  QuestionModel("", {
    "": false,
    "": true,
    "": false,
    "": false,
  }),
  QuestionModel("", {
    "": false,
    "": true,
    "": false,
    "": false,
  }),
  QuestionModel("", {
    "": false,
    "": true,
    "": false,
    "": false,
  }),
  QuestionModel("", {
    "": false,
    "": true,
    "": false,
    "": false,
  }),
  QuestionModel("", {
    "": false,
    "": true,
    "": false,
    "": false,
  }),
  QuestionModel("", {
    "": false,
    "": true,
    "": false,
    "": false,
  }),
  QuestionModel("", {
    "": false,
    "": true,
    "": false,
    "": false,
  }),
  QuestionModel("", {
    "": false,
    "": true,
    "": false,
    "": false,
  }),
  QuestionModel("", {
    "": false,
    "": true,
    "": false,
    "": false,
  }),
  QuestionModel("", {
    "": false,
    "": true,
    "": false,
    "": false,
  }),
];

List<QuestionModel> questionPronounHard = [
  QuestionModel("", {
    "": false,
    "": true,
    "": false,
    "": false,
  }),
  QuestionModel("", {
    "": false,
    "": true,
    "": false,
    "": false,
  }),
  QuestionModel("", {
    "": false,
    "": true,
    "": false,
    "": false,
  }),
  QuestionModel("", {
    "": false,
    "": true,
    "": false,
    "": false,
  }),
  QuestionModel("", {
    "": false,
    "": true,
    "": false,
    "": false,
  }),
  QuestionModel("", {
    "": false,
    "": true,
    "": false,
    "": false,
  }),
  QuestionModel("", {
    "": false,
    "": true,
    "": false,
    "": false,
  }),
  QuestionModel("", {
    "": false,
    "": true,
    "": false,
    "": false,
  }),
  QuestionModel("", {
    "": false,
    "": true,
    "": false,
    "": false,
  }),
  QuestionModel("", {
    "": false,
    "": true,
    "": false,
    "": false,
  }),
];

List<QuestionModel> questionVerbEasy = [
  QuestionModel("", {
    "": false,
    "": true,
    "": false,
    "": false,
  }),
  QuestionModel("", {
    "": false,
    "": true,
    "": false,
    "": false,
  }),
  QuestionModel("", {
    "": false,
    "": true,
    "": false,
    "": false,
  }),
  QuestionModel("", {
    "": false,
    "": true,
    "": false,
    "": false,
  }),
  QuestionModel("", {
    "": false,
    "": true,
    "": false,
    "": false,
  }),
  QuestionModel("", {
    "": false,
    "": true,
    "": false,
    "": false,
  }),
  QuestionModel("", {
    "": false,
    "": true,
    "": false,
    "": false,
  }),
  QuestionModel("", {
    "": false,
    "": true,
    "": false,
    "": false,
  }),
  QuestionModel("", {
    "": false,
    "": true,
    "": false,
    "": false,
  }),
  QuestionModel("", {
    "": false,
    "": true,
    "": false,
    "": false,
  }),
];

List<QuestionModel> questionVerbMedium = [
  QuestionModel("", {
    "": false,
    "": true,
    "": false,
    "": false,
  }),
  QuestionModel("", {
    "": false,
    "": true,
    "": false,
    "": false,
  }),
  QuestionModel("", {
    "": false,
    "": true,
    "": false,
    "": false,
  }),
  QuestionModel("", {
    "": false,
    "": true,
    "": false,
    "": false,
  }),
  QuestionModel("", {
    "": false,
    "": true,
    "": false,
    "": false,
  }),
  QuestionModel("", {
    "": false,
    "": true,
    "": false,
    "": false,
  }),
  QuestionModel("", {
    "": false,
    "": true,
    "": false,
    "": false,
  }),
  QuestionModel("", {
    "": false,
    "": true,
    "": false,
    "": false,
  }),
  QuestionModel("", {
    "": false,
    "": true,
    "": false,
    "": false,
  }),
  QuestionModel("", {
    "": false,
    "": true,
    "": false,
    "": false,
  }),
];

List<QuestionModel> questionVerbHard = [
  QuestionModel("", {
    "": false,
    "": true,
    "": false,
    "": false,
  }),
  QuestionModel("", {
    "": false,
    "": true,
    "": false,
    "": false,
  }),
  QuestionModel("", {
    "": false,
    "": true,
    "": false,
    "": false,
  }),
  QuestionModel("", {
    "": false,
    "": true,
    "": false,
    "": false,
  }),
  QuestionModel("", {
    "": false,
    "": true,
    "": false,
    "": false,
  }),
  QuestionModel("", {
    "": false,
    "": true,
    "": false,
    "": false,
  }),
  QuestionModel("", {
    "": false,
    "": true,
    "": false,
    "": false,
  }),
  QuestionModel("", {
    "": false,
    "": true,
    "": false,
    "": false,
  }),
  QuestionModel("", {
    "": false,
    "": true,
    "": false,
    "": false,
  }),
  QuestionModel("", {
    "": false,
    "": true,
    "": false,
    "": false,
  }),
];

List<QuestionModel> questionAdverbEasy = [
  QuestionModel("", {
    "": false,
    "": true,
    "": false,
    "": false,
  }),
  QuestionModel("", {
    "": false,
    "": true,
    "": false,
    "": false,
  }),
  QuestionModel("", {
    "": false,
    "": true,
    "": false,
    "": false,
  }),
  QuestionModel("", {
    "": false,
    "": true,
    "": false,
    "": false,
  }),
  QuestionModel("", {
    "": false,
    "": true,
    "": false,
    "": false,
  }),
  QuestionModel("", {
    "": false,
    "": true,
    "": false,
    "": false,
  }),
  QuestionModel("", {
    "": false,
    "": true,
    "": false,
    "": false,
  }),
  QuestionModel("", {
    "": false,
    "": true,
    "": false,
    "": false,
  }),
  QuestionModel("", {
    "": false,
    "": true,
    "": false,
    "": false,
  }),
  QuestionModel("", {
    "": false,
    "": true,
    "": false,
    "": false,
  }),
];

List<QuestionModel> questionAdverbMedium = [
  QuestionModel("", {
    "": false,
    "": true,
    "": false,
    "": false,
  }),
  QuestionModel("", {
    "": false,
    "": true,
    "": false,
    "": false,
  }),
  QuestionModel("", {
    "": false,
    "": true,
    "": false,
    "": false,
  }),
  QuestionModel("", {
    "": false,
    "": true,
    "": false,
    "": false,
  }),
  QuestionModel("", {
    "": false,
    "": true,
    "": false,
    "": false,
  }),
  QuestionModel("", {
    "": false,
    "": true,
    "": false,
    "": false,
  }),
  QuestionModel("", {
    "": false,
    "": true,
    "": false,
    "": false,
  }),
  QuestionModel("", {
    "": false,
    "": true,
    "": false,
    "": false,
  }),
  QuestionModel("", {
    "": false,
    "": true,
    "": false,
    "": false,
  }),
  QuestionModel("", {
    "": false,
    "": true,
    "": false,
    "": false,
  }),
];

List<QuestionModel> questionAdverbHard = [
  QuestionModel("", {
    "": false,
    "": true,
    "": false,
    "": false,
  }),
  QuestionModel("", {
    "": false,
    "": true,
    "": false,
    "": false,
  }),
  QuestionModel("", {
    "": false,
    "": true,
    "": false,
    "": false,
  }),
  QuestionModel("", {
    "": false,
    "": true,
    "": false,
    "": false,
  }),
  QuestionModel("", {
    "": false,
    "": true,
    "": false,
    "": false,
  }),
  QuestionModel("", {
    "": false,
    "": true,
    "": false,
    "": false,
  }),
  QuestionModel("", {
    "": false,
    "": true,
    "": false,
    "": false,
  }),
  QuestionModel("", {
    "": false,
    "": true,
    "": false,
    "": false,
  }),
  QuestionModel("", {
    "": false,
    "": true,
    "": false,
    "": false,
  }),
  QuestionModel("", {
    "": false,
    "": true,
    "": false,
    "": false,
  }),
];

List<QuestionModel> questionAdjectiveEasy = [
  QuestionModel("", {
    "": false,
    "": true,
    "": false,
    "": false,
  }),
  QuestionModel("", {
    "": false,
    "": true,
    "": false,
    "": false,
  }),
  QuestionModel("", {
    "": false,
    "": true,
    "": false,
    "": false,
  }),
  QuestionModel("", {
    "": false,
    "": true,
    "": false,
    "": false,
  }),
  QuestionModel("", {
    "": false,
    "": true,
    "": false,
    "": false,
  }),
  QuestionModel("", {
    "": false,
    "": true,
    "": false,
    "": false,
  }),
  QuestionModel("", {
    "": false,
    "": true,
    "": false,
    "": false,
  }),
  QuestionModel("", {
    "": false,
    "": true,
    "": false,
    "": false,
  }),
  QuestionModel("", {
    "": false,
    "": true,
    "": false,
    "": false,
  }),
  QuestionModel("", {
    "": false,
    "": true,
    "": false,
    "": false,
  }),
];

List<QuestionModel> questionAdjectiveMedium = [
  QuestionModel("", {
    "": false,
    "": true,
    "": false,
    "": false,
  }),
  QuestionModel("", {
    "": false,
    "": true,
    "": false,
    "": false,
  }),
  QuestionModel("", {
    "": false,
    "": true,
    "": false,
    "": false,
  }),
  QuestionModel("", {
    "": false,
    "": true,
    "": false,
    "": false,
  }),
  QuestionModel("", {
    "": false,
    "": true,
    "": false,
    "": false,
  }),
  QuestionModel("", {
    "": false,
    "": true,
    "": false,
    "": false,
  }),
  QuestionModel("", {
    "": false,
    "": true,
    "": false,
    "": false,
  }),
  QuestionModel("", {
    "": false,
    "": true,
    "": false,
    "": false,
  }),
  QuestionModel("", {
    "": false,
    "": true,
    "": false,
    "": false,
  }),
  QuestionModel("", {
    "": false,
    "": true,
    "": false,
    "": false,
  }),
];

List<QuestionModel> questionAdjectiveHard = [
  QuestionModel("", {
    "": false,
    "": true,
    "": false,
    "": false,
  }),
  QuestionModel("", {
    "": false,
    "": true,
    "": false,
    "": false,
  }),
  QuestionModel("", {
    "": false,
    "": true,
    "": false,
    "": false,
  }),
  QuestionModel("", {
    "": false,
    "": true,
    "": false,
    "": false,
  }),
  QuestionModel("", {
    "": false,
    "": true,
    "": false,
    "": false,
  }),
  QuestionModel("", {
    "": false,
    "": true,
    "": false,
    "": false,
  }),
  QuestionModel("", {
    "": false,
    "": true,
    "": false,
    "": false,
  }),
  QuestionModel("", {
    "": false,
    "": true,
    "": false,
    "": false,
  }),
  QuestionModel("", {
    "": false,
    "": true,
    "": false,
    "": false,
  }),
  QuestionModel("", {
    "": false,
    "": true,
    "": false,
    "": false,
  }),
];

List<QuestionModel> questionConjuctionEasy = [];

List<QuestionModel> questionConjuctionMedium = [];

List<QuestionModel> questionConjuctionHard = [];

List<QuestionModel> questionPrepositionEasy = [];

List<QuestionModel> questionPrepositionMedium = [];

List<QuestionModel> questionPrepositionHard = [];

List<QuestionModel> questionInterjectionEasy = [];

List<QuestionModel> questionInterjectionMedium = [];

List<QuestionModel> questionInterjectionHard = [];
