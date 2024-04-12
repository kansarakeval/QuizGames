import 'package:ansergame/screen/question/controller/question_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  QuestionController questionController = Get.put(QuestionController());

  @override
  void initState() {
    super.initState();
    questionController.getQuestionData();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: Obx(
                () =>  questionController.questionModel!.value == null
                ? const Center(
              child: CircularProgressIndicator(),
            )
                : Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                     Text(
                      "Q:${questionController.currentQuestionIndex.value + 1}.",
                      style:
                      TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "${questionController.questionModel!.value!.listResults![questionController.currentQuestionIndex.value].question}",
                      style:
                      const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          questionController.nextQuestion();
                        },
                        style: ButtonStyle(
                          backgroundColor:
                          MaterialStateProperty.all(Colors.green.shade600),
                        ),
                        child: Text(
                          "Next",
                          style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.white),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          backgroundColor:
                          MaterialStateProperty.all(Colors.green.shade600),
                        ),
                        child: Text(
                          "A. ${questionController.questionModel!.value!.listResults![questionController.currentQuestionIndex.value].correct_answer}",
                          style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.white),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          backgroundColor:
                          MaterialStateProperty.all(Colors.green.shade600),
                        ),
                        child: Text(
                          "B. ${questionController.questionModel!.value!.listResults![questionController.currentQuestionIndex.value].incorrectAnswersList![0]}",
                          style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.white),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          backgroundColor:
                          MaterialStateProperty.all(Colors.green.shade600),
                        ),
                        child: Text(
                          "c.${questionController.questionModel!.value!.listResults![questionController.currentQuestionIndex.value].incorrectAnswersList![1]}",
                          style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.white),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          backgroundColor:
                          MaterialStateProperty.all(Colors.green.shade600),
                        ),
                        child: Text(
                          "D.${questionController.questionModel!.value!.listResults![questionController.currentQuestionIndex.value].incorrectAnswersList![2]}",
                          style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}