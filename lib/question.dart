import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final List<String> questionText;
  final int questionIndex;

  Question({required this.questionText, required this.questionIndex});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Text(
        questionText[questionIndex],
        textAlign: TextAlign.center,
        style: TextStyle(
            fontSize: 18, fontWeight: FontWeight.bold, color: Colors.pink),
      ),
    );
  }
}
