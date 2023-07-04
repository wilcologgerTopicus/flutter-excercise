import 'package:Quiz/data/questions.dart';
import 'package:flutter/material.dart';

import '../answer_button.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[0];

    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            currentQuestion.text,
            style: const TextStyle(color: Colors.white),
          ),
          const SizedBox(
            height: 30,
          ),
          AnswersButton(
            answerText: currentQuestion.answers[0],
            onTap: () {},
          ),
          AnswersButton(
            answerText: currentQuestion.answers[1],
            onTap: () {},
          ),
          AnswersButton(
            answerText: currentQuestion.answers[2],
            onTap: () {},
          ),
          AnswersButton(
            answerText: currentQuestion.answers[3],
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
