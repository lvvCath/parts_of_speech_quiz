import 'package:parts_of_speech_quiz/screens/quiz/model/questionmodel.dart';

List<practiceQuestionModel> questionPractice = [
  practiceQuestionModel(
    "Practice Question 1 ?",
    {
      "1": false,
      "3": false,
      "12": true,
      "5,007": false,
    },
    "hint 1",
  ),
  practiceQuestionModel(
    "When does a cat purr ?",
    {
      "When it cares for its kittens": false,
      "When it needs comfort": false,
      "When it feels content": false,
      "All of the above": true,
    },
    "hint 2",
  ),
  practiceQuestionModel(
    "What is the average number of kittens in a litter ?",
    {
      "1 to 2": false,
      "3 to 5": true,
      "8 to 10": false,
      "12 to 14": false,
    },
    "hint 3",
  ),
  practiceQuestionModel(
    "How many moons does Mars have ?",
    {
      "1": false,
      "2": false,
      "4": true,
      "8": false,
    },
    "hint 4",
  ),
];

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
  QuestionModel("Which word is a pronoun in the following sentence?", {
    "Play": false,
    "Music": false,
    "Room": false,
    "We": true,
  }),
  QuestionModel(
      "Replace the word(s) inside the parenthesis with the correct pronoun. He really likes to play with (Ahmed and I).",
      {
        "we": false,
        "us": true,
        "them": false,
        "him": false,
      }),
  QuestionModel(
      "“Time to go to school, Jack. Have ___ got your keys? I can’t find them.” What is the missing pronoun?",
      {
        "I": false,
        "we": false,
        "you": true,
        "our": false,
      }),
  QuestionModel(
      "“We enjoyed ourselves at the National Museum of Art.” Identify the subject pronoun in the sentence.",
      {
        "enjoyed": false,
        "we": true,
        "ourselves": false,
        "the": false,
      }),
  QuestionModel(
      "“The teacher didn’t give us homework.” What type of pronoun that this sentence used?",
      {
        "Subject Pronoun": false,
        "Sub-pronoun": false,
        "Object Pronoun": true,
        "Type I Pronoun": false,
      }),
  QuestionModel(
      "Choose the correct pronoun: Elephants are very big, so _____ eat a lot of food.",
      {
        "your": false,
        "them": false,
        "me": false,
        "they": true,
      }),
  QuestionModel("Choose the correct pronoun(s): _____ is talking to ___.", {
    "She, us": true,
    "Him, her": false,
    "It, us": false,
    "They, her": false,
  }),
  QuestionModel(
      "'I don't want to play golf with him as he is too good.' Which words are the pronouns in that sentence?",
      {
        "him, play, golf": false,
        "I, him, he": true,
        "don't, he, him": false,
        "want, good, is": false,
      }),
  QuestionModel("___ want to travel around the world.", {
    "She": false,
    "I": true,
    "Him": false,
    "Her": false,
  }),
  QuestionModel(
      "Dinosaurs were very large, but (they) all died million of years ago. What kind of pronoun is the word inside the parenthesis?",
      {
        "Possessive Pronoun": false,
        "Object Pronoun": false,
        "Subject Pronoun": true,
        "Sub-pronoun": false,
      }),
];

List<QuestionModel> questionPronounMedium = [
  QuestionModel("What is a pronoun?", {
    "A word that takes the pace of a noun.": true,
    "A word that takes the place of verbs.": false,
    "A word that takes the place of adjectives.": false,
    "A word that takes the place of adverbs.": false,
  }),
  QuestionModel(
      "What is the name given to the word or group of words that a pronoun replaces?",
      {
        "Root word": false,
        "Antiseptic": false,
        "Antecedent": true,
        "Antibiotic": false,
      }),
  QuestionModel(
      "What is the antecedent of the pronoun for (her)? “My mother ate (her) salad.",
      {
        "My": false,
        "mother": true,
        "ate": false,
        "salad": false,
      }),
  QuestionModel(
      "What is the antecedent of the pronoun for (their)? “Students should go to (their) classes prepared.”",
      {
        "Students": true,
        "should": false,
        "classes": false,
        "prepared": false,
      }),
  QuestionModel("What is the pronoun for (teacher)?", {
    "about": false,
    "student": false,
    "that": false,
    "her": true,
  }),
  QuestionModel(
      "Every pronoun must have an antecedent. Example: She will attend college after high school.",
      {
        "True": false,
        "False": true,
        "Maybe": false,
        "I don't know": false,
      }),
  QuestionModel("Which word below is NOT a personal pronoun?", {
    "I": false,
    "We": false,
    "You": false,
    "Which": true,
  }),
  QuestionModel(
      "Name the type of pronoun that is inside the parenthesis. “I don’t know (anyone) who would say such a thing.",
      {
        "Reflexive Pronoun": false,
        "Interrogative Pronoun": false,
        "Indefinite Pronoun": true,
        "Intensive Pronoun": false,
      }),
  QuestionModel(
      "Name the type of pronoun that is inside the parenthesis. “(These) are the most comfortable shoes I have ever worn.”",
      {
        "Interrogative Pronoun": false,
        "Relative Pronoun": false,
        "Personal Pronoun": false,
        "Demonstrative Pronoun": true,
      }),
  QuestionModel(
      "Name the type of pronoun that is inside the parenthesis. “They made (themselves) some turkey sandwiches.”",
      {
        "Personal Pronoun": false,
        "Intensive Pronoun": false,
        "Relative Pronoun": false,
        "Reflexive Pronoun": true,
      }),
];

List<QuestionModel> questionPronounHard = [
  QuestionModel(
      "What type of pronoun is this? “I was hanging out at the park all alone.”",
      {
        "Personal": true,
        "Indefinite": false,
        "Demonstrative": false,
        "Interrogative": false,
      }),
  QuestionModel("What type of pronoun is this? “Who did the work?”", {
    "Personal": false,
    "Interrogative": true,
    "Reflexive": false,
    "Indefinite": false,
  }),
  QuestionModel(
      "What type of pronoun is this? “(All) of you are in big trouble!”", {
    "Interrogative": false,
    "Reflexive": false,
    "Personal": false,
    "Indefinite": true,
  }),
  QuestionModel("Which is the Personal Pronoun?", {
    "Me": true,
    "Ourselves": false,
    "Myself": false,
    "All of the above": false,
  }),
  QuestionModel("What type of pronoun is this? “That was a huge plane!”", {
    "Interrogative": false,
    "Personal": false,
    "Reflexive": false,
    "Demonstrative": true,
  }),
  QuestionModel(
      "Is this a Personal Pronoun? “(All) of them are in big trouble!”", {
    "Yes": false,
    "No": true,
    "Maybe": false,
    "I don't know": false,
  }),
  QuestionModel(
      "Is this a Reflexive Pronoun? “He did the work by (himself).”", {
    "Yes": true,
    "No": false,
    "I don't know": false,
    "Maybe": false,
  }),
  QuestionModel("What type of pronoun is this? “This is his.”", {
    "Demonstrative, Possessive": true,
    "Demonstrative, Personal": false,
    "Personal, Demonstrative": false,
    "Demonstrative, Indefinite": false,
  }),
  QuestionModel("Define a demonstrative pronoun.", {
    "A really long noun": false,
    "A really short noun": false,
    "Points out a specific thing": true,
    "Points out a confusing noun": false,
  }),
  QuestionModel(
      "What is the missing demonstrative pronoun? Demonstrative Pronouns: This, That, These, and ____?",
      {
        "Them": false,
        "Their": false,
        "Those": true,
        "Whose": false,
      }),
];

List<QuestionModel> questionVerbEasy = [
  QuestionModel("My aunt _____ shrimps.", {
    "eat": true,
    "drink": false,
    "come": false,
    "color": false,
  }),
  QuestionModel(
      "What is the verb in the sentence? “Phillip reads a few pages everyday.”",
      {
        "Phillip": false,
        "reads": true,
        "pages": false,
        "every": false,
      }),
  QuestionModel(
      "What is the verb in the sentence? “Haley climbed the mountain on Friday.”",
      {
        "Haley": false,
        "Friday": false,
        "climbed": true,
        "the mountain": false,
      }),
  QuestionModel("What do verbs do?", {
    "They modify nouns or pronouns.": false,
    "They express an action, condition, or state of being.": true,
    "They modify verbs, adjectives, or other adverbs.": false,
    "They are used in a place of a noun.": false,
  }),
  QuestionModel(
      "Identify the verb in the sentence: “Sarah voted for the very first time!”",
      {
        "voted": true,
        "Sarah": false,
        "first": false,
        "very": false,
      }),
  QuestionModel("Which sentence is correct?", {
    "The boys are playing on the playground.": true,
    "The boys is playing on the playground.": false,
    "The boys are played on the playground.": false,
    "The boys play’s on the playground.": false,
  }),
  QuestionModel(
      "Which sentence has the correct verb and tell if the subject us singular or plural.",
      {
        "Hearts pump blood. (plural subject)": true,
        "Hearts pump blood. (singular subject)": false,
        "Hearts pumps blood. (plural subject)": false,
        "Hearts pumps blood (singular subject)": false,
      }),
  QuestionModel(
      "Change the verb in this sentence to show past tense: “He (loves) plants.”",
      {
        "love": false,
        "loves": false,
        "loved": true,
        "will love": false,
      }),
  QuestionModel("What is the past form of “run”?", {
    "ran": true,
    "runs": false,
    "ranned": false,
    "runed": false,
  }),
  QuestionModel(
      "Which verb best fits the sentence? “The family ____ last week.", {
    "camped": true,
    "will camp": false,
    "camp": false,
    "camps": false,
  }),
];

List<QuestionModel> questionVerbMedium = [
  QuestionModel(
      "In the following sentence, what is the verb phrase (helping verb and main verb)? “The sun has risen over the town.”",
      {
        "The sun": false,
        "sun has": false,
        "has risen": true,
        "over the": false,
      }),
  QuestionModel(
      "In the following sentence, what is the verb phrase (helping verb and min verb)? “A rooster is crowing in the yard.”",
      {
        "is crowing": true,
        "crowing in": false,
        "A rooster": false,
        "rooster is": false,
      }),
  QuestionModel(
      "In the following sentence, what is the verb phrase (helping verb and min verb)? “The children have awakened because of the noise.”",
      {
        "because of": false,
        "The children": false,
        "the noise": false,
        "have awakened": true,
      }),
  QuestionModel(
      "What is the correct present tense verb to finish the sentence? “I _____ quickly.",
      {
        "dressed": false,
        "dress": true,
        "dresses": false,
        "dress's": false,
      }),
  QuestionModel(
      "What is the correct present tense verb to finish the sentence? “We _____ to the door.”",
      {
        "hurry": true,
        "hurries": false,
        "hurried": false,
        "will hurry": false,
      }),
  QuestionModel(
      "What is the correct present tense verb to finish the sentence? “We _____ the early West.”",
      {
        "study": false,
        "studyed": false,
        "studied": true,
        "studies": false,
      }),
  QuestionModel(
      "Which verb completes the sentence? “They _____ formed long ago by volcanoes.”",
      {
        "were": true,
        "was": false,
        "is": false,
        "are": false,
      }),
  QuestionModel(
      "Choose the past tense verb to complete the sentence. “A cold wind _____.”",
      {
        "blows": false,
        "blown": false,
        "blew": true,
        "blow": false,
      }),
  QuestionModel(
      "What word should be added to the sentence so that it takes place in the future? “If Camille doesn’t leave now, she ___ late for her doctor’s appointment.”",
      {
        "correct as is": false,
        "will be": true,
        "is": false,
        "are being": false,
      }),
  QuestionModel("What is the past tense form of keep?", {
    "keeped": false,
    "will keep": false,
    "keeping": false,
    "kept": true,
  }),
];

List<QuestionModel> questionVerbHard = [
  QuestionModel("Find the main verb: “The king has created bad laws.”", {
    "king": false,
    "has": false,
    "created": true,
    "laws": false,
  }),
  QuestionModel("Find the helping verb: “That color does look good on you.”", {
    "color": false,
    "look": false,
    "does": true,
    "good": false,
  }),
  QuestionModel(
      " Identify the progressive tense of the verb: “We (were planning) our meals for week yesterday.”",
      {
        "Present progressive": false,
        "Past progressive": true,
        "Future progressive": false,
        "None of the above": false,
      }),
  QuestionModel(
      "Identify the progressive tense of the verb: “I (am cutting) the onions now.”",
      {
        "Present progressive": true,
        "Past progressive": false,
        "Future progressive": false,
        "None of the above": false,
      }),
  QuestionModel(
      "Identify the progressive tense of the verb: “We (were measuring) the olive oil when the phone rang.”",
      {
        "Present progressive": false,
        "Past progressive": true,
        "Future progressive": false,
        "None of the above": false,
      }),
  QuestionModel(
      "What PERFECT tense is used in this sentence: “Julie had been watching the dog until her friend came to the door.”",
      {
        "Past Perfect": true,
        "Present Perfect": false,
        "Future Perfect": false,
        "None of the above": false,
      }),
  QuestionModel(
      "As he _____ not satisfied with answers, he _____ the lesson tomorrow.", {
    "is, will repeat": true,
    "was, would repeat": false,
    "is, repeated": false,
    "was, will repeated": false,
  }),
  QuestionModel(
      "What PERFECT tense is used in this sentence: “That nurse will have helped many sick children by the time she leaves.”",
      {
        "Past Perfect": false,
        "Present Perfect": false,
        "Future Perfect": true,
        "None of the above": false,
      }),
  QuestionModel(
      "Complete the sentence using the past perfect tense: “Ms. Beane _____ her dog to the vet yesterday. (take)",
      {
        "has taken": false,
        "had taken": true,
        "will have taken": false,
        "no choice is correct": false,
      }),
  QuestionModel("Which sentence is in the simple past tense?", {
    "You will find your backpack behind the lockers.": false,
    "My dog will chase and fetch a stick if you throw it.": false,
    "They teased my little sister at the birthday party.": true,
    "We fly through the air on the theme park ride.": false,
  }),
];

List<QuestionModel> questionAdverbEasy = [
  QuestionModel("Which is an adverb? “Please write your questions here.”", {
    "Please": false,
    "write": false,
    "questions": false,
    "here": true,
  }),
  QuestionModel(
      "What is the adverb in the sentence? “Peter neatly wrote a shopping list.”",
      {
        "neatly": true,
        "wrote": false,
        "shopping": false,
        "list": false,
      }),
  QuestionModel(
      "What is the adverb in the sentence? “I yelled loudly to my brother to come and play with me.”",
      {
        "yelled": false,
        "loudly": true,
        "brother": false,
        "me": false,
      }),
  QuestionModel("Adverb tells about _____.", {
    "conjunctions": false,
    "verbs": true,
    "prepositions": false,
    "nouns": false,
  }),
  QuestionModel(
      "What does the [adverb] tells about the (verb)? “They (asked) questions [quietly].”",
      {
        "when": false,
        "where": false,
        "why": false,
        "how": true,
      }),
  QuestionModel(
      "Which adverb can be used to complete this sentence? “They were talking _____.”",
      {
        "outside": false,
        "loudly": false,
        "yesterday": false,
        "all of the above": true,
      }),
  QuestionModel(
      "What does the [adverb] tell about the (verb)? “[Sometimes], my brothers (play) funny jokes!”",
      {
        "how": false,
        "when": false,
        "how often": true,
        "where": false,
      }),
  QuestionModel(
      "How many adverbs are in this sentence? “Dely usually sings beautifully.”",
      {
        "1": false,
        "2": true,
        "3": false,
        "none": false,
      }),
  QuestionModel(
      "Which adverb tell when? “It often rains everywhere at night.”", {
    "often": false,
    "rains": false,
    "everywhere": false,
    "at night": true,
  }),
  QuestionModel("Many adverbs that tell how something is done end in:", {
    "-ing": false,
    "-ed": false,
    "-ly": true,
    "-er": false,
  }),
];

List<QuestionModel> questionAdverbMedium = [
  QuestionModel("Which one is an adverb?", {
    "clearly": true,
    "clearing": false,
    "cleared": false,
    "clearer": false,
  }),
  QuestionModel("Which of the following is NOT an adverb?", {
    "before": false,
    "after": false,
    "soon": false,
    "jump": true,
  }),
  QuestionModel("Adverbs modify all of the following EXCEPT", {
    "verbs": false,
    "adjectives": false,
    "other adverbs": false,
    "nouns": true,
  }),
  QuestionModel(
      "Identify the adverbs: “Tuesday, Mark desperately tried to finish all of his homework.”",
      {
        "Tuesday, desperately": true,
        "finish, was": false,
        "Mark, homework": false,
        "all, his": false,
      }),
  QuestionModel(
      "Tell whether the adverb in the sentence is comparative or superlative. “Mom will likely wait in the car than stay home.”",
      {
        "comparative": true,
        "superlative": false,
        "both": false,
        "neither": false,
      }),
  QuestionModel(
      "Choose the adverb clause in each sentence. “This job isn’t done until I finish.”",
      {
        "isn't done": false,
        "until": false,
        "until I finish": true,
        "this job": false,
      }),
  QuestionModel(
      "Choose the adverb clause in each sentence. “As soon as the referee blows the whistle, the game is over.”",
      {
        "as soon as": false,
        "as soon as the referee": false,
        "as soon as the referee blows the whistle": true,
        "the games is over": false,
      }),
  QuestionModel("Adverbs can describe _____, _____, & _____.", {
    "nouns, verbs, adjectives": false,
    "verbs, adjectives, adverbs": true,
    "pronouns, verbs, adjectives": false,
    "verbs, adverbs, nouns": false,
  }),
  QuestionModel(
      "Identify the adverb(s): “Ruben and Jeanine often write quietly on our white boards.”",
      {
        "write": false,
        "often, quietly": true,
        "boards": false,
        "quietly, white": false,
      }),
  QuestionModel(
      "What are the adverb(s) used in this sentence? “The cat was scared deathless by the terrifying, humungous bulldog.”",
      {
        "scared & terrifying": false,
        "terrifying & humungous": false,
        "humungous": false,
        "deathless": true,
      }),
];

List<QuestionModel> questionAdverbHard = [
  QuestionModel(
      "Identify what type of adverb is used in this sentence: “(When) do you go to sleep at night?”",
      {
        "Adverb of Degree": false,
        "Interrogative Adverb": true,
        "Adverb of Place": false,
        "Adverb of Frequency": false,
      }),
  QuestionModel(
      "Identify what type of adverb is used in this sentence: “She is (too) shy to be a model.”",
      {
        "Adverb of Degree": true,
        "Adverb of Place": false,
        "Adverb of Manner": false,
        " Adverb of Time": false,
      }),
  QuestionModel(
      "Identify what type of adverb is used in this sentence: “He received the guest (gladly).”",
      {
        "Adverb of Manner": true,
        "Adverb of Time": false,
        "Adverb of Place": false,
        "Adverb of Degree": false,
      }),
  QuestionModel(
      "In a sentence, an adverb may be separated from the verb to which it relates.",
      {
        "True": true,
        "False": false,
        "Maybe": false,
        "I don't know": false,
      }),
  QuestionModel(
      "Which of the following is an incorrect adjective-adverb pairing?", {
    "public - publically": true,
    "ironic - ironically": false,
    "acrobatic - acrobatically": false,
    "chemical - chemically": false,
  }),
  QuestionModel(
      "Which sentence contains an adverb that adds meaning to another adverb?",
      {
        "Everywhere we could see signs of the intruder.": false,
        "That new theme park ride is definitely exciting.": false,
        "My new mobile phone is extremely valuable to me.": false,
        "The crowd cheered the new band enthusiastically.": true,
      }),
  QuestionModel("Which sentence includes an adverbial phrase?", {
    "She was extremely polite to the customer.": false,
    "We very rarely saw accidents after the road repairs.": true,
    "Somewhere there was a bell that was ringing.": false,
    "Start tomorrow.": false,
  }),
  QuestionModel("Which list contains only adverbs?", {
    "Lovely,happily, cautiously": false,
    "occasionally, silly, furiously": false,
    "ferociously, very, ugly": false,
    "rather, outrageously, subconsciously": true,
  }),
  QuestionModel(
      "Which statements about adverbs is true? (select the best option)", {
    "Adverbs add information to a verb about (who) does an action.": false,
    "Adverbs add information to a verb about (why) an action is done.": false,
    "Adverbs add information to a verb about (what) action is done.": false,
    "Adverbs add information about (how) an action is done.": true,
  }),
  QuestionModel("Which of the following sentences is NOT written correctly?", {
    "She gave us the money generously.": false,
    "She gave us generously the money.": false,
    "Generously, she gave us the money.": false,
    "She generously gave us the money.": true,
  }),
];

List<QuestionModel> questionAdjectiveEasy = [
  QuestionModel("The comparative form of the adjective good is _____.", {
    "better": true,
    "more good": false,
    "more good": false,
    "best": false,
  }),
  QuestionModel("An adjective describes a _____.", {
    "noun": true,
    "verb": false,
    "adverb": false,
    "conjunction": false,
  }),
  QuestionModel(
      "Identify the adjective: “The shiny car caught his attention.”", {
    "shiny": true,
    "car": false,
    "caught": false,
    "attention": false,
  }),
  QuestionModel(
      "What is/are the adjective(s) in the following sentence? “Christopher found a beautiful rock in his messy room.”",
      {
        "found": false,
        "beautiful": false,
        "messy": false,
        "beautiful and messy": true,
      }),
  QuestionModel("Which word is NOT an adjective?", {
    "beautiful": false,
    "sparkly": false,
    "yesterday": true,
    "nice": false,
  }),
  QuestionModel("Which sentence has a correctly spelled adjective?", {
    "The wite bunny is jumping": false,
    "The brown dog ran.": true,
    "The golde cat is running.": false,
    "The scelled fish blew bubbles": false,
  }),
  QuestionModel(
      "The adjective is underline, what is the noun it describes? “Elephants are smart animals.”",
      {
        "animals": true,
        "Elephants": false,
        "smart": false,
        "are": false,
      }),
  QuestionModel(
      "Choose the correct adjective. “Mrs. Turner is _____ than Mrs. Weaver.", {
    "adjective ending in -est": false,
    "more": false,
    "most": false,
    "adjective ending in -er": true,
  }),
  QuestionModel("What are adjective?", {
    "Connecting words": false,
    "Describing words": true,
    "Action words": false,
    "decorating words": false,
  }),
  QuestionModel(
      "The (girl) wearing (long) (blue) dress is very (smart). In this sentence, _____ is not an adjective.",
      {
        "girl": true,
        "long": false,
        "blue": false,
        "smart": false,
      }),
];

List<QuestionModel> questionAdjectiveMedium = [
  QuestionModel("I invited (that) man to come in.", {
    "Possessive Adjective": false,
    "Interrogative Adjective": false,
    "Demonstrative Adjective": true,
    "Distributive Adjective": false,
  }),
  QuestionModel("This is (my) table", {
    "Possessive Adjective": true,
    "Interrogative Adjective": false,
    "Demonstrative Adjective": false,
    "Distributive Adjective": false,
  }),
  QuestionModel("(Every) soldier is punctually in his place.", {
    "Possessive adjective": false,
    "Interrogative Adjective": false,
    "Demonstrative Adjective": false,
    "Distributive Adjective": true,
  }),
  QuestionModel(
      "Select the adjectives in the sentence. “Two old turtles banged shells together.”",
      {
        "old, banged, together": false,
        "two, old": true,
        "two, old, shells": false,
        "two, old, banged, shells": false,
      }),
  QuestionModel(
      "Select the adjectives in the sentence. “The blue and gold snake is beautiful.”",
      {
        "blue, gold": false,
        "blue, gold, snake": false,
        "blue, gold, beautiful": true,
        "blue, gold, beautiful, snake": false,
      }),
  QuestionModel("What does a Comparative Adjective do?", {
    "Compares 2 objects": true,
    "Compares 3 or more objects": false,
    "Compares things using like or as": false,
    "Compares things NOT using like or as": false,
  }),
  QuestionModel("What does a Superlative Adjective do?", {
    "Compares things using like or as": false,
    "Compares things NOT using like or as": false,
    "Compares 2 objects": false,
    "Compares 3 or more objects": true,
  }),
  QuestionModel(
      "Sometimes, comparative and superlative adjectives need indefinite adjectives before them. Which of the lists below are examples of indefinite adjectives?",
      {
        "This, that, these, those": false,
        "Which, who, whom, whose": false,
        "His, hers, him, her": false,
        "Least, less, more, most": true,
      }),
  QuestionModel(
      "Which of the following is a correct comparative adjective pair?", {
    "big - larger": false,
    "good - gooder": false,
    "bad - wors": true,
    "fun - funner": false,
  }),
  QuestionModel("Which sentence has a demonstrative adjective?", {
    "These are my collection of toys.": false,
    "This television is for sale.": true,
    "That is a brown chair.": false,
    "Those are delicious mangoes.": false,
  }),
];

List<QuestionModel> questionAdjectiveHard = [
  QuestionModel(
      "Identify the kind of adjective used in the sentence. “Ram is a hardworking boy.”",
      {
        "quantity": false,
        "quality": true,
        "interrogative": false,
        "demonstrative": false,
      }),
  QuestionModel(
      "Identify the kind of adjective used in the sentence. “We have forty class rooms in our school.”",
      {
        "Demonstrative adjective": false,
        "Interrogative adjective": false,
        "Adjective of number": true,
        "Adjective of quantity": false,
      }),
  QuestionModel(
      "Complete the following sentence with correct form of adjective: “Despite the efforts of environmentalists, rain forest cover _____ area every year.”",
      {
        "least": false,
        "less": true,
        "few": false,
        "fewer": false,
      }),
  QuestionModel(
      "Complete the following sentence with correct form of adjective: “The loss of tress actually results in _____ rain for an area.”",
      {
        "fewer": false,
        "fewest": false,
        "less": true,
        "least": false,
      }),
  QuestionModel(
      "Identify the adjective(s): “Ambitious freshmen already want to improve their initial PSAT score.”",
      {
        "Ambitious, initial": true,
        "Freshmen, scores": false,
        "Already, improve": false,
        "Want to improve": false,
      }),
  QuestionModel(
      "Identify the adjective(s): “My favorite breakfast food is English muffins.”",
      {
        "food, muffin": false,
        "favorite, muffins": false,
        "breakfast, English": true,
        "is, muffins": false,
      }),
  QuestionModel("Which is the correct order for adjectives?", {
    "Number, color, age, material, size, opinion, purpose, shape, origin":
        false,
    "Opinion, material, color, shape, number, origin, purpose, age, size":
        false,
    "Number, opinion, size, age, shape, color, origin, material, purpose": true,
    "Color, opinion, age, origin, size, shape, material, number, purpose":
        false,
  }),
  QuestionModel(
      "Put the words in the correct order: is / boring / a / math / old / he / teacher",
      {
        "A boring old math teacher he is": false,
        "A old math teacher he is boring": false,
        "He is a boring old math teacher": true,
        "He is a old boring math teacher": false,
      }),
  QuestionModel(
      "What is the correct order of these six categories of descriptive adjectives?",
      {
        "Color-material-size-age-shape-origin": false,
        "Shape-color-size-material-origin-age": false,
        "Size-shape-color-age-material-origin": false,
        "Size-age-shape-color-origin-material": true,
      }),
  QuestionModel(
      "What is the noun used as the adjective? “World religions, complex and serious are sometime very confusing.”",
      {
        "world": false,
        "complex": true,
        "serious": false,
        "confusing": false,
      }),
];

List<QuestionModel> questionConjuctionEasy = [
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

List<QuestionModel> questionConjuctionMedium = [
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

List<QuestionModel> questionConjuctionHard = [
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

List<QuestionModel> questionPrepositionEasy = [
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

List<QuestionModel> questionPrepositionMedium = [
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

List<QuestionModel> questionPrepositionHard = [
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

List<QuestionModel> questionInterjectionEasy = [
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

List<QuestionModel> questionInterjectionMedium = [
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

List<QuestionModel> questionInterjectionHard = [
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
