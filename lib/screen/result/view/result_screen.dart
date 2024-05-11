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
          title: const Text("Result",style: TextStyle(color: Colors.white),),
          centerTitle: true,
          backgroundColor: Colors.black,
        ),

        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('asset/img/free-photo-of-green-metal-plate-wall.jpeg'), // Replace 'assets/background_image.jpg' with your image asset path
              fit: BoxFit.cover, // Adjust this to fit your needs
            ),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "${controller.totalScore}/${controller.quizList.length}",
                  style: const TextStyle(fontSize: 50,color: Colors.white,fontWeight: FontWeight.bold),
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
                  child: const Text("Replay",style: TextStyle(color: Colors.black),),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
