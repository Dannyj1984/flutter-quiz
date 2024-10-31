import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  AnswerButton(this.answer, this.onPress, {super.key});
  final String answer;
  final void Function() onPress;
  @override
  Widget build(context) {
    return ElevatedButton(
        onPressed: onPress,
        style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
            minimumSize: const Size(200, 40),
            backgroundColor: const Color.fromARGB(255, 69, 8, 119),
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(40))),
        child: Text(answer));
  }
}
