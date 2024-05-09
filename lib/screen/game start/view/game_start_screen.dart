import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GameStartScreen extends StatefulWidget {
  const GameStartScreen({super.key});

  @override
  State<GameStartScreen> createState() => _GameStartScreenState();
}

class _GameStartScreenState extends State<GameStartScreen> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
              image: AssetImage("asset/img/bg.jpeg"),
              fit: BoxFit.cover,
            )),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    Get.offAllNamed('question');
                  },
                  child: const Image(
                    image: AssetImage("asset/img/start.png"),fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
