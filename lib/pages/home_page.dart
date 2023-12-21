import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:quizzle/models/question_model.dart';
import 'package:quizzle/widgets/question_widget.dart';

const Color correct = Colors.green;
const Color incorrect = Colors.red;
const Color neutral = Colors.white;
const Color background = Color(DateTime.april);

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Question> _questions = [
    Question(id: '1', question: "What is statefulWidget ?", options: {
      'Widget without state': false,
      'Widget with state': true,
      'Widget with science': false,
      'Widget with battery': false,
    }),
    Question(
        id: '2',
        question: "How to create a new flutter project?",
        options: {
          'create react app': false,
          'ask adarsh': true,
          'create flutter app': true,
          'go to developer': false,
        })
  ];

  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      appBar: AppBar(
        title: const Text("Burning Question"),
      ),
      body: Container(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
            children: [
              QuestionWidget(
                  index: index,
                  question: _questions[index].question,
                  totalQuestion: _questions.length)
            ],
          ),
        ),
      ),
    );
  }
}
