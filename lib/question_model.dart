class QuestionModel {
  final String questionText;
  final List<String> options;
  final int correctAnswerIndex;
  final String? imagePath;

  QuestionModel({
    required this.questionText,
    required this.options,
    required this.correctAnswerIndex,
    this.imagePath,
  });
}