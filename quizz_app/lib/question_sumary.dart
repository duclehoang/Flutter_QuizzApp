import 'package:flutter/material.dart';

class QuestionSummary extends StatelessWidget {
  final List<Map<String, Object>> summaryData;

  const QuestionSummary(this.summaryData, {super.key});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map(
            (data) {
              return Row(
                children: [
                  Text(
                    ((data['question_index'] as int) + 1).toString(),
                    style: const TextStyle(
                      color: Colors.blueAccent,
                      fontSize: 20,
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          data['question'] as String,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Your answer: ${data['user_answer'].toString()}',
                          style: const TextStyle(
                            color: Colors.amberAccent,
                            fontSize: 20,
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Correct answer:${data['correct_answer'].toString()}',
                          style: const TextStyle(
                            color: Colors.redAccent,
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              );
            },
          ).toList(),
        ),
      ),
    );
  }
}
