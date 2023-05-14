import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  void start() {}

  @override
  Widget build(context) {
    return Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
            Color.fromARGB(255, 2, 40, 69),
            Color.fromARGB(255, 253, 1, 114)
          ], begin: Alignment.topLeft, end: Alignment.bottomRight),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Opacity(
                opacity: 0.5,
                child: Image.asset(
                  'assets/images/quiz-logo.png',
                  width: 300,
                ),
              ),
              const SizedBox(height: 80),
              Text(
                'Learn Flutter Fun Anyway',
                style: GoogleFonts.lato(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 50),
              OutlinedButton.icon(
                style: OutlinedButton.styleFrom(
                    foregroundColor: const Color.fromARGB(255, 234, 234, 243)),
                onPressed: startQuiz,
                label: const Text("Start Quiz"),
                icon: const Icon(Icons.arrow_right_alt),
              )
            ],
          ),
        ));
  }
}
