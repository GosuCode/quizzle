import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:quizzle/pages/home_page.dart';

class NextButton extends StatelessWidget {
  const NextButton({
    super.key,
    required this.nextQuestion,
  });
  final VoidCallback nextQuestion;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: nextQuestion,
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            color: incorrect, borderRadius: BorderRadius.circular(10)),
        padding: EdgeInsets.symmetric(vertical: 10.0),
        child: Text(
          'Next',
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
