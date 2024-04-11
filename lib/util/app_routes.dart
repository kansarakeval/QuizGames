import 'package:ansergame/screen/game%20start/view/game_start_screen.dart';
import 'package:ansergame/screen/question/view/question_screen.dart';
import 'package:ansergame/screen/splash/view/splash_screen.dart';
import 'package:flutter/material.dart';

Map<String,WidgetBuilder> app_routes={
  '/': (context) => const SpleshScreen(),
  'start': (context) => const GameStartScreen(),
  'question':(context) => const QuestionScreen(),
};