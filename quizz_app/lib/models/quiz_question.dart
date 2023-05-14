class QuizQuestion {
  final String text;
  final List<String> aswer;
  QuizQuestion({required this.text, required this.aswer});
  List<String> getShuffledAnswer() {
    final shuffledAnswer = List.of(aswer);
    shuffledAnswer.shuffle();
    return shuffledAnswer;
  }
}
