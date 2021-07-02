import 'package:expense_planner/question.dart';
import 'package:expense_planner/result.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State {
  final List<String> _questions = [
    "What is your favorite food?",
    "What is your favorite color?",
    "What is your age?"
  ];

  int _questionIndex = 0;

  void _answerButtonPressed() {
    setState(() {
      _questionIndex += 1;
    });
  }

  void _resetButtonPressed() {
    setState(() {
      _questionIndex = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Expense Planner'),
        ),
        body: _questionIndex < _questions.length
            ? Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Card(
                    child: Text('Flutter Card'),
                    elevation: 10,
                  ),
                  Question(
                      questionText: _questions, questionIndex: _questionIndex),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(primary: Colors.blue),
                    onPressed: _answerButtonPressed,
                    child: Text('Press here'),
                  )
                ],
              )
            : Result(resetbuttonPressed: _resetButtonPressed),
      ),
    );
  }
}
