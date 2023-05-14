import 'package:flutter/material.dart';
import 'package:quizz_app/data/question.dart';
import 'package:quizz_app/question_sumary.dart';
import 'package:quizz_app/start_screen.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({
    super.key,
    required this.chooseAnser,
  });

  final List<String> chooseAnser;
  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> sumary = [];
    for (var i = 0; i < chooseAnser.length; i++) {
      sumary.add(
        {
          'question_index': i,
          'question': question[i].text,
          'correct_answer': question[i].aswer[0],
          'user_answer': chooseAnser[i],
        },
      );
    }
    return sumary;
  }

  @override
  Widget build(BuildContext context) {
    final Summarydata = getSummaryData();
    final numTotalQuestions = question.length;
    final numCorrectQuestions = Summarydata.where((data) {
      return data['user_answer'] == data['correct_answer'];
    }).length;
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "You answered x of $numTotalQuestions question correctly",
              style: const TextStyle(color: Colors.white),
            ),
            const SizedBox(
              height: 30,
            ),
            QuestionSummary(getSummaryData()),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "List of answers and questions",
              style: TextStyle(color: Colors.white),
            ),
            const SizedBox(
              height: 20,
            ),
            TextButton(
              onPressed: () {},
              child: const Text(
                "Restart Quiz",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
