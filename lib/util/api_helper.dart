import 'dart:convert';
import 'package:ansergame/screen/question/model/question_model.dart';
import 'package:http/http.dart' as http;

class APIHelper {
  Future<QuestionModel?> questionCall() async {
    String apiLink =
        "https://opentdb.com/api.php?amount=10&category=27&difficulty=easy&type=multiple";
    var response = await http.get(Uri.parse(apiLink));
    if (response.statusCode == 200) {
      var json = jsonDecode(response.body);
      QuestionModel questionModel = QuestionModel.mapToModel(json);
      return questionModel;
    }
    return null;
  }
}