import 'package:flutter/material.dart';
import 'package:laravel_quiz/home.dart';
import 'package:laravel_quiz/quizzes.dart';
import 'package:laravel_quiz/questions/questions.dart';
import 'package:laravel_quiz/result_quiz.dart';

const startAlign = Alignment.topCenter;
const endAlign = Alignment.bottomCenter;

class MainQuiz extends StatefulWidget {
  const MainQuiz({super.key});

  @override
  State<MainQuiz> createState() {
    return _MainQuiz();
  }
}

class _MainQuiz extends State<MainQuiz> {
  var currentScreen = 'main-quiz';
  List<String> selectedAnswer = [];

  void startQuiz() {
    setState(() {
      currentScreen = 'quizzes-screen';
    });
  }

  void userAnswer(String answer) {
    selectedAnswer.add(answer);

    if (selectedAnswer.length == questions.length) {
      setState(() {
        currentScreen = 'result-screen';
      });
    }
  }

  void onRestart() {
    setState(() {
      currentScreen = 'main-quizzes';
      selectedAnswer = [];
    });
  }

  @override
  Widget build(BuildContext context) {
    const List<Color> colors = [
      Color.fromARGB(255, 255, 50, 50),
      Color.fromARGB(255, 255, 185, 185),
    ];

    Widget showScreen = Home(startQuiz);

    if (currentScreen == 'quizzes-screen') {
      showScreen = Quizzes(userAnswer: userAnswer);
    } else if (currentScreen == 'result-screen') {
      showScreen = ResultQuiz(answers: selectedAnswer, onRestart: onRestart);
    } else if (currentScreen == 'main-quizzes') {
      showScreen = Home(startQuiz);
    }

    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
            colors: colors,
            begin: startAlign,
            end: endAlign,
          )),
          child: Center(child: showScreen),
        ),
      ),
    );
  }
}
