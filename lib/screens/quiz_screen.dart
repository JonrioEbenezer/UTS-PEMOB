import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:f1_quiz_app/quiz_provider.dart';
import 'package:f1_quiz_app/screens/result_screen.dart';

class QuizScreen extends StatelessWidget {
  const QuizScreen({super.key});

  void _onAnswerSelected(BuildContext context, int selectedIndex) {
    final provider = Provider.of<QuizProvider>(context, listen: false);
    bool isCorrect = provider.answerQuestion(selectedIndex);

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(isCorrect ? 'Jawaban Benar!' : 'Jawaban Salah!'),
        backgroundColor: isCorrect ? Colors.green : Colors.red,
        duration: const Duration(seconds: 1),
      ),
    );

    if (provider.quizFinished) {
      Navigator.of(context).pushReplacement(PageRouteBuilder(
        pageBuilder: (_, __, ___) => const ResultScreen(),
        transitionsBuilder: (_, animation, __, child) {
          return FadeTransition(
            opacity: animation,
            child: SlideTransition(
              position: Tween(
                begin: const Offset(0.1, 0),
                end: Offset.zero,
              ).animate(animation),
              child: child,
            ),
          );
        },
        transitionDuration: const Duration(milliseconds: 400),
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<QuizProvider>(
      builder: (context, provider, child) {
        final question = provider.currentQuestion;
        final progress =
            (provider.currentQuestionIndex + 1) / provider.totalQuestions;

        return Scaffold(
          backgroundColor: Colors.grey[100],
          appBar: AppBar(
            backgroundColor: Colors.redAccent,
            title: Text(
              'Pertanyaan ${provider.currentQuestionIndex + 1}/${provider.totalQuestions}',
              style: const TextStyle(color: Colors.white),
            ),
            centerTitle: true,
            automaticallyImplyLeading: false,
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(4),
              child: LinearProgressIndicator(
                value: progress,
                backgroundColor: Colors.white.withOpacity(0.3),
                valueColor:
                const AlwaysStoppedAnimation<Color>(Colors.white),
              ),
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                Expanded(
                  flex: 5,
                  child: AnimatedSwitcher(
                    duration: const Duration(milliseconds: 300),
                    child: Card(
                      key: ValueKey<int>(provider.currentQuestionIndex),
                      elevation: 8,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(24.0),
                        child: Center(
                          child: Column(
                            children: [
                              Text(
                                question.questionText,
                                key: ValueKey<int>(provider.currentQuestionIndex),
                                style: Theme.of(context).textTheme.headlineSmall,
                                textAlign: TextAlign.center,
                              ),
                              const SizedBox(height: 15),

                              if (question.imagePath != null && question.imagePath!.isNotEmpty)
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(12),
                                  child: Image.asset(
                                    question.imagePath!,
                                    height: 200,
                                    width: double.infinity,
                                    fit: BoxFit.contain, // ubah di sini agar gambar tampil penuh
                                    alignment: Alignment.center,
                                  ),
                                ),

                            ],
                          ),

                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                Expanded(
                  flex: 4,
                  child: Column(
                    children: List.generate(question.options.length, (index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            elevation: 3,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            minimumSize: const Size(double.infinity, 55),
                          ),
                          onPressed: () =>
                              _onAnswerSelected(context, index),
                          child: Text(
                            question.options[index],
                            style: const TextStyle(
                              fontSize: 16,
                              color: Colors.black87,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      );
                    }),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
