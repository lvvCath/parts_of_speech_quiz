class History {
  String? category;
  String? difficulty;
  String? score;
  String? date;
  String? time;

  History({
    this.category,
    this.difficulty,
    this.score,
    this.date,
    this.time
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