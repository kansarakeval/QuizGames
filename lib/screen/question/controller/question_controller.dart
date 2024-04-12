import 'package:ansergame/screen/question/model/question_model.dart';
import 'package:ansergame/util/api_helper.dart';
import 'package:get/get.dart';

class QuestionController extends GetxController {
  Rxn<QuestionModel>? questionModel = Rxn();
  Rx<int> currentQuestionIndex = 0.obs;


  Future<void> getQuestionData() async {
    APIHelper apiHelper = APIHelper();
    QuestionModel? w1 = await apiHelper.questionCall();
    questionModel?.value = w1;
  }

  Future<void> nextQuestion() async {
    if (currentQuestionIndex < questionModel!.value!.listResults!.length - 1) {
      currentQuestionIndex.value++;
    } else {
      currentQuestionIndex = 0.obs;
      await getQuestionData();
    }
  }
}
