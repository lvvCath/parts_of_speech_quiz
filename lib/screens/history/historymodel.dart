class History {
  late String category;
  late String difficulty;
  late String score;
  late String date;
  late String time;

  History({
    required this.category,
    required this.difficulty,
    required this.score,
    required this.date,
    required this.time
  });

  History.fromMap(Map map) :
        this.category = map['category'],
        this.difficulty = map['difficulty'],
        this.score = map['score'],
        this.date = map['date'],
        this.time = map['time'];

  Map toMap(){
    return {
    'category': this.category,
    'difficulty': this.difficulty,
    'score': this.score,
    'date': this.date,
    'time': this.time,
    };
  }
}