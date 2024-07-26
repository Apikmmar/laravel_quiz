import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:laravel_quiz/questions/questions.dart';
import 'package:laravel_quiz/widget/restart_button.dart';

class ResultQuiz extends StatelessWidget {
  const ResultQuiz({required this.answers, required this.onRestart, super.key});

  final List<String> answers;
  final void Function() onRestart;

  List<Map<String, Object>> resultSummary() {
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < questions.length; i++) {
      summary.add({
        'question': questions[i],
        'correct_answer': questions[i].answers[0],
        'user_answer': answers[i],
      });
    }

    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final summaryData = resultSummary();
    final totalQuest = questions.length;
    final correctQuest = summaryData.where((data) {
      return data['user_answer'] == data['correct_answer'];
    }).length;

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(35),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'You get $correctQuest out of $totalQuest correct answer!',
              style: GoogleFonts.lato(
                color: const Color.fromARGB(255, 255, 255, 255),
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 30),
            RestartButton(onRestart),
          ],
        ),
      ),
    );
  }
}
