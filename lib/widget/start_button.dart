import 'package:flutter/material.dart';

class StartButton extends StatelessWidget {
  const StartButton(this.startScreen, {super.key});

  final void Function() startScreen;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 120,
      child: OutlinedButton.icon(
      onPressed: startScreen,
      style: OutlinedButton.styleFrom(
        foregroundColor: const Color.fromARGB(255, 255, 255, 255),
        padding: const EdgeInsets.symmetric(vertical: 15),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      ),
      icon: const Icon(Icons.start),
      label: const Text('Lets Start!')),
    );
  }
}