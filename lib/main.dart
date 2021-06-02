import 'package:flutter/material.dart';
import 'package:mad_deutch_quiz/answer.dart';
import 'question.dart';
import 'answer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  void _answerQuestion() {
    setState(() {
      index = index + 1;
    });
  }

  int index = 0;

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favourite color?',
      'What\'s your favourite animal?',
      'What\'s your favourite color?',
      'What\'s your favourite food?',
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My App'),
        ),
        body: Column(children: [
          Question(questions[index]),
          Answer(_answerQuestion),
          Answer(_answerQuestion),
          Answer(_answerQuestion),
          ElevatedButton(onPressed: null, child: Text('Answer 3')),
        ]),
      ),
    );
  }
}
