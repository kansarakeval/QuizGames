class QuestionModel{
  int? response_code;
  List<ResultsModel>? listResults=[];

  QuestionModel({this.response_code, this.listResults});

  factory QuestionModel.mapToModel(Map m1){
    List l1 = m1['results'];
    return QuestionModel(
      response_code: m1['response_code'],
      listResults: l1.map((e) => ResultsModel.mapToModel(e)).toList(),
    );
  }
}

class ResultsModel{
  String? type,difficulty,category,question,correct_answer;
  List? incorrectAnswersList=[];

  ResultsModel(
      {this.type,
      this.difficulty,
      this.category,
      this.question,
      this.correct_answer,
      this.incorrectAnswersList});

  factory ResultsModel.mapToModel(Map m1){
    return ResultsModel(
      type: m1['type'],
      difficulty: m1['difficulty'],
      category: m1['category'],
      question: m1['question'],
      correct_answer: m1['correct_answer'],
      incorrectAnswersList:m1['incorrect_answers'],
    );
  }
}

