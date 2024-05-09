import 'dart:convert';
import 'package:ansergame/screen/question/model/question_model.dart';
import 'package:http/http.dart' as http;

class APIHelper {
  Future<QuestionModel?> questionCall() async {
    var jsonString =
        "https://opentdb.com/api.php?amount=10&category=27&difficulty=easy&type=multiple";
    var response = await http.get(Uri.parse(jsonString));

    if (response.statusCode == 200) {
      var quizData = jsonDecode(response.body);
      QuestionModel quiz = QuestionModel.mapToModel(quizData);
      print(response.body);
      return quiz;
    }
    return null;
  }
}
