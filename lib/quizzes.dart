import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:laravel_quiz/questions/questions.dart';
import 'package:laravel_quiz/widget/answer_button.dart';

class Quizzes extends StatefulWidget {
  const Quizzes({required this.userAnswer, super.key});

  final void Function(String answer) userAnswer;

  @override
  State<Quizzes> createState() {
    return _Quizzes();
  }
}

class _Quizzes extends State<Quizzes> {
  var currentIndex = 0;

  void answerQuestion(String answer) {
    widget.userAnswer(answer);

    setState(() {
      currentIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final curentQuestions = questions[currentIndex];

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(35),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              curentQuestions.text,
              style: GoogleFonts.lato(
                color: const Color.fromARGB(255, 255, 255, 255),
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 30,
            ),
            ...curentQuestions.shuffleAnswers().map((answer) {
              return AnswerButton(
                text: answer,
                selectAnswer: () {
                  answerQuestion(answer);
                });
            }),
          ],
        ),
      ),
    );
  }
}
