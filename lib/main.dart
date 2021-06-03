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
    final questions = [
      {
        'questionText': 'What\'s your favourite class?',
        'answers': [' wizard', 'bard', 'paladin']
      },
      {
        'questionText': 'What\'s your favourite dregon?',
        'answers': [' red', 'black', 'green']
      },
      {
        'questionText': 'What\'s your favourite spell?',
        'answers': [' fireball', 'fireball', 'fireball']
      },
      {
        'questionText': 'What\'s your favourite summon?',
        'answers': [' badger', 'lemure', 'archon']
      },
    ];
    if (index < questions.length) {
    } else {}
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My App'),
        ),
        body: index < questions.length
            ? Column(children: [
                Question(questions[index]['questionText']),
                ...(questions[index]['answers'] as List<String>)
                    .map((answer) => Answer(_answerQuestion, answer))
                    .toList(),
                // Answer(_answerQuestion, questions[index]['answers'][1]),
                // Answer(_answerQuestion),
                // Answer(_answerQuestion),
                ElevatedButton(onPressed: null, child: Text('Answer 3')),
              ])
            : Center(
                child: Text('You did it!!!'),
              ),
      ),
    );
  }
}
