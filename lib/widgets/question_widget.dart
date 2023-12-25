import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:quizzle/pages/home_page.dart';

class QuestionWidget extends StatelessWidget {
  const QuestionWidget(
      {super.key,
      required this.index,
      required this.question,
      required this.totalQuestion});

  final String question;
  final int index;
  final int totalQuestion;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Text(
        'Question ${index + 1}/$totalQuestion: $question',
        style: TextStyle(
          fontSize: 24.0,
          color: neutral,
        ),
      ),
    );
  }
}
