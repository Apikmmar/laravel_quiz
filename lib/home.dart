import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:laravel_quiz/widget/start_button.dart';

class Home extends StatefulWidget {
  const Home(this.startScreen, {super.key});

  final void Function() startScreen;

  @override
  State<StatefulWidget> createState() {
    return _Home();
  }
}

class _Home extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/img/download.png',
          width: 200,
          height: 250,
          color: const Color.fromARGB(151, 255, 255, 255),
        ),
        Padding(
          padding: const EdgeInsets.only(
            top: 25,
            bottom: 25,
          ),
          child: Text(
            'Try this quiz', 
            style: GoogleFonts.lato(
              color: const Color.fromARGB(255, 255, 255, 255),
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        StartButton(widget.startScreen),
      ],
    );
  }
}
