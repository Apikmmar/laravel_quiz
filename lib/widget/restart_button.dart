import 'package:flutter/material.dart';

class RestartButton extends StatelessWidget {
  const RestartButton(this.onRestart, {super.key});

  final void Function() onRestart;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton.icon(
      onPressed: onRestart,
      style: OutlinedButton.styleFrom(
        foregroundColor: const Color.fromARGB(255, 255, 255, 255),
        padding:
            const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      ),
      icon: const Icon(Icons.refresh),
      label: const Text('Restart!')
    );
  }
}