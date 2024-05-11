import 'dart:async';

import 'package:ansergame/screen/question/model/question_model.dart';
import 'package:ansergame/util/api_helper.dart';
import 'package:get/get.dart';

class QuestionController extends GetxController {
  Rxn<QuestionModel> questionModel = Rxn();
  RxList<QuizModel> quizList = <QuizModel>[].obs;
  RxInt index = 0.obs;
  RxInt totalScore = 0.obs;
  RxInt count = 20.obs;

  Timer? timer;

  Future<void> getQuiz() async {
    APIHelper apiHelper = APIHelper();
    QuestionModel? m1 = await apiHelper.questionCall();

    questionModel.value = m1;

    if (questionModel.value != null) {
      List<QuizModel> result = [];
      for (ResultModel r1 in questionModel.value!.resultList!) {
        List allOption = r1.incorrectAnswers!;
        allOption.add(r1.correct_answer);
        allOption.shuffle();

        QuizModel q1 = QuizModel(
          question: r1.question,
          correct_answer: r1.correct_answer,
          option: allOption,
        );
        result.add(q1);
      }
      quizList.value = result;

      update();
    }
  }

  void result(String selectAns) {
    if (selectAns == quizList[index.value].correct_answer) {
      totalScore.value++;
    }
  }

  //timer
  void countDown() {
    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (count > 0 && index.value != quizList.length) {
        count.value--;
      } else {
        if (index.value != quizList.length - 1) {
          index.value++;
        }
        else {
          timer.cancel();
          Get.offAllNamed('result');
        }
        count.value = 20;
      }
      print("$count");
    });
  }
}
