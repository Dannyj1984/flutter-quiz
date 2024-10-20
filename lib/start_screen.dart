import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(mainAxisSize: MainAxisSize.min, children: [
      Image.asset('assets/images/quiz-logo.png',
          width: 300, color: const Color.fromARGB(150, 255, 255, 255)),
      const SizedBox(height: 20),
      const Text(
        'Learn Flutter the fun way!',
        style: TextStyle(
          fontSize: 20,
          color: Color.fromARGB(255, 234, 176, 241),
        ),
      ),
      const SizedBox(height: 20),
      OutlinedButton.icon(
          icon: const Icon(Icons.arrow_right_alt),
          onPressed: () => {},
          style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
          label: const Text(
            'Start quiz',
            style: TextStyle(fontSize: 18),
          ))
    ]));
  }
}
