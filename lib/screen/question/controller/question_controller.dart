import 'package:ansergame/screen/question/model/question_model.dart';
import 'package:ansergame/util/api_helper.dart';
import 'package:get/get.dart';

class QuestionController extends GetxController {
  QuestionModel? questionModel;


  Future<void> getQuestionData() async {
    APIHelper apiHelper = APIHelper();
    QuestionModel? w1 = await apiHelper.questionCall();
    questionModel = w1;
    update();
  }

}
