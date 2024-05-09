import 'package:ansergame/screen/question/controller/question_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ResultScreen extends StatefulWidget {
  const ResultScreen({super.key});

  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  QuestionController controller = Get.put(QuestionController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Result"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "${controller.totalScore}/${controller.quizList.length}",
                style: const TextStyle(fontSize: 20),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  controller.totalScore.value = 0;
                  controller.index.value = 0;
                  controller.count.value =20;
                  controller.quizList.value = [];
                  Get.offAllNamed('start');
                },
                child: const Text("Replay"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
