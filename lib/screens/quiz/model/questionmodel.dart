class QuestionModel {
  String? question;
  Map<String, bool>? answers;
  QuestionModel(this.question, this.answers);
}

class practiceQuestionModel {
  String? question;
  Map<String, bool>? answers;
  String? hint;
  practiceQuestionModel(this.question, this.answers, this.hint);
}