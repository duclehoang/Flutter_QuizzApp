import 'package:flutter/material.dart';
import 'package:quizz_app/data/question.dart';
import 'package:quizz_app/question_screen.dart';
import 'package:quizz_app/result_Screen.dart';
import 'package:quizz_app/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  List<String> selectedAnswer = [];
  var activeScreen = 'start_screen';

  void chooserAnswer(String answer) {
    selectedAnswer.add(answer);
    if (selectedAnswer.length == question.length) {
      setState(() {
        //selectedAnswer = [];
        activeScreen = 'result_screen';
      });
    }
  }

  void switchScreen() {
    setState(() {
      activeScreen = 'question_screen';
    });
  }

  @override
  Widget build(context) {
    Widget screenWidget = StartScreen(switchScreen);

    if (activeScreen == 'question_screen') {
      screenWidget = QuestionScreen(
        onSelectAnswer: chooserAnswer,
      );
    }

    if (activeScreen == 'result_screen') {
      screenWidget = ResultScreen(
        chooseAnser: selectedAnswer,
      );
    }

    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 2, 40, 69),
                Color.fromARGB(255, 253, 1, 114)
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: screenWidget,
        ),
      ),
    );
  }
}
