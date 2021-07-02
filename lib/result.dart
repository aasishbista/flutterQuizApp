import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final VoidCallback resetbuttonPressed;

  Result({required this.resetbuttonPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(20),
        padding: EdgeInsets.all(20),
        width: double.infinity,
        child: Column(children: [
          Text("Congratulations you completed the quiz!"),
          ElevatedButton(
              onPressed: resetbuttonPressed,
              child: Text(
                'Reset quiz',
                textAlign: TextAlign.center,
              ))
        ]));
  }
}
