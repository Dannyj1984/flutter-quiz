import 'package:flutter/material.dart';
import 'package:flutter_application_1/data/questions.dart';

import 'answer_button.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});
  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  @override
  Widget build(context) {
    final currentQuestion = questions[0];
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            currentQuestion.text,
            style: const TextStyle(
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 30),
          ...questions.first.answers.map((answer) => Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: AnswerButton(
                  answer,
                  () {},
                ),
              )),
        ],
      ),
    );
  }
}
