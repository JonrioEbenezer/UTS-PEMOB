import 'package:flutter/material.dart';
import 'package:f1_quiz_app/question_model.dart';
import 'package:f1_quiz_app/dummy_question.dart';

class QuizProvider with ChangeNotifier {
  String _playerName = '';
  int _score = 0;
  int _currentQuestionIndex = 0;
  final List<QuestionModel> _questions = dummyF1Questions; // Ambil dari dummy data
  bool _quizFinished = false;

  // Getters
  String get playerName => _playerName;
  int get score => _score;
  int get currentQuestionIndex => _currentQuestionIndex;
  List<QuestionModel> get questions => _questions;
  QuestionModel get currentQuestion => _questions[_currentQuestionIndex];
  bool get quizFinished => _quizFinished;
  int get totalQuestions => _questions.length;

  // Setter untuk nama pemain
  void setPlayerName(String name) {
    _playerName = name;
    notifyListeners();
  }

  // Logika saat menjawab pertanyaan
  bool answerQuestion(int selectedOptionIndex) {
    bool isCorrect = false;
    if (selectedOptionIndex == currentQuestion.correctAnswerIndex) {
      _score++;
      isCorrect = true;
    }

    // Pindah ke pertanyaan berikutnya atau selesaikan kuis
    if (_currentQuestionIndex < _questions.length - 1) {
      _currentQuestionIndex++;
    } else {
      _quizFinished = true;
    }

    notifyListeners(); // Memberi tahu UI untuk update
    return isCorrect;
  }

  // Reset kuis untuk "Main Lagi"
  void resetQuiz() {
    _score = 0;
    _currentQuestionIndex = 0;
    _quizFinished = false;
    _playerName = '';
    notifyListeners();
  }
}